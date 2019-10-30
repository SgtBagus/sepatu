<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mymodel extends CI_Model {

		public function __construct()
		{
			$this->load->database(); 
		}

		public function selectData($table)
		{
			$query = $this->db->get($table);
			return $query->result_array();
		}

		public function selectWithQuery($str)
    	{
    		$query = $this->db->query($str);
    		return $query->result_array();
    	}


		public function selectWhere($table,$where)
		{
				$query = $this->db->get_where($table,$where);
				return $query->result_array();
		 }

		public function selectDataone($table,$where)
		{
				$query = $this->db->get_where($table,$where);
				return $query->row_array();
		}

		public function deleteData($table,$id)
		{
			$this->db->where($id);
			return $this->db->delete($table);
			
		}

		public function insertData($table,$data)
		{
			$result = $this->db->insert($table,$data);
			return $result;
		}


		public function updateData($table,$data,$where)
		{
			$result = $this->db->update($table,$data,$where);
			return $result;
		}

}