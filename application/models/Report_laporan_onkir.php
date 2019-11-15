<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report_laporan_onkir extends CI_Model {

    public function __construct()
    {

      $this->load->database();
        
    }


    var $column_order = array(null,'nama_customer','value','biaya_kirim','biaya_kirim_real','status_pengiriman','tgl_status_pengiriman'); //field yang ada di table user
    var $column_search = array(null,'nama_customer','value','biaya_kirim','biaya_kirim_real','status_pengiriman','tgl_status_pengiriman'); //field yang ada di table user
    var $order = array('nama_customer'=>'asc'); // default order 
    var $table = "(SELECT b.nama_customer, c.value, a.biaya_kirim, a.biaya_kirim_real, a.status_pengiriman, a.tgl_status_pengiriman FROM transaksi a INNER JOIN customer b ON a.id_kurir = b.id INNER JOIN master_kurir c ON a.id_kurir = c.id) as tabledata";

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
                    // $this->db->like($item, $_POST['search']['value']);
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
