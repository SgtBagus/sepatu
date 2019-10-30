<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mmodel extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		
	}

	public function selectData($table){
        return $this->db->get($table);
	}

	public function selectDataorder($table,$order_by,$order_type){
		$this->db->order_by($order_by,$order_type);
        return $this->db->get($table);
	}

	public function selectWhere($table,$where){
        $this->db->where($where);
        return $this->db->get($table);
	}

	public function selectWhereSpec($select,$table,$where){
		$this->db->select($select);
        return $this->db->get_where($table,$where);
	}

	public function selectWhereorder($table,$where,$order_by){
		$this->db->order_by($order_by,'DESC');
        return $this->db->get_where($table,$where);
	}

	public function deleteData($table,$id){
	    $this->db->where($id);
		return $this->db->delete($table);	
	}

	public function insertData($table,$data){
		return $this->db->insert($table,$data);
	}

	public function selectWherelimit($table,$where,$order_by,$order_type,$limit){
		$this->db->order_by($order_by,$order_type);
		$this->db->limit($limit);
        return $this->db->get_where($table,$where);
	}

	public function selectDataorderlimit($table,$order_by,$limit){
		$this->db->order_by($order_by,'DESC');
		$this->db->limit($limit);
        return $this->db->get($table);
	}

	public function selectDatalimit($table,$limit){
		$this->db->limit($limit);
        return $this->db->get($table);
	}


	public function updateData($table,$data,$where){
		return $this->db->update($table,$data,$where);
	}



	public function Log($id,$remark,$value){
		$data['remark'] = $remark;
		$data['value'] = json_encode($value);
		$data['created_at'] = date("Y-m-d H:i:s");
		$data['created_by'] = $id;
		$this->db->insert('log', $data);
	}

}

/* End of file  */
/* Location: ./application/models/ */