<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report_produk_terlaris extends CI_Model {

    public function __construct()
    {

      $this->load->database();
        
    }


    var $column_order = array(null,'nama_produk','warna_produk','jumlah_stok','terjual'); //field yang ada di table user
    var $column_search = array(null,'nama_produk','warna_produk','jumlah_stok','terjual'); //field yang ada di table user
    var $order = array('nama_produk'=>'asc'); // default order 
    var $table = "(SELECT b.nama_produk, a.warna_produk, a.jumlah_stok, SUM(c.qty) as terjual FROM produk_ready a LEFT JOIN master_produk b on a.id_produk = b.id INNER JOIN transaksi_produk_ready c ON c.id_produk_ready = a.id INNER JOIN transaksi d ON d.kode_transaksi = c.kode_transaksi WHERE d.status_order = 'Selesai' GROUP BY a.id ORDER BY c.qty ASC) as tabledata";

    private function _get_datatables_query()
    {

        $this->db->from($this->table);
        $i = 0;
        foreach ($this->column_search as $item) // looping awal
        {
            if($_POST['search']['value']) // jika datatable mengirimkan pencarian dengan metode POST
            {
                if($i===0) // looping awal
                {
                    $this->db->group_start(); 
                    $this->db->like($item, $_POST['search']['value']);
                }else
                {
                    $this->db->or_like($item, $_POST['search']['value']);
                }
                if(count($this->column_search) - 1 == $i) 

                    $this->db->group_end(); 
            }
            $i++;
        }

         

        if(isset($_POST['order'])) 
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } 
        else if(isset($this->order))
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }

 

    function get_datatables()
    {
        
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();

    }

 

    function count_filtered()
    {

        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();

    }

 

    public function count_all()
    {

        $this->db->from($this->table);
        return $this->db->count_all_results();
    }


     function get_data()
    {
        
        $this->db->from($this->table);
        $query = $this->db->get();
        return $query->result();

    }


}

?>
