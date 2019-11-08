<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report_kota_terlaris extends CI_Model {

    public function __construct()
    {

      $this->load->database();
        
    }


    var $column_order = array(null,'provinsi','COUNT'); //field yang ada di table user
    var $column_search = array(null,'provinsi','COUNT'); //field yang ada di table user
    var $order = array('provinsi'=>'asc'); // default order 
    var $table = "(SELECT a.id_customer, c.provinsi as provinsi, c.id, COUNT(c.id) as COUNT FROM transaksi a INNER JOIN customer b ON a.id_customer = b.id INNER JOIN tbl_provinsi c ON b.id_provinsi = c.id WHERE a.status = 'ENABLE' AND a.status_order = 'Selesai' GROUP BY a.id_customer ORDER BY COUNT DESC) as tabledata";

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
