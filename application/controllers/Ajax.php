<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Ajax extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function get_kota($id){
		$kota = $this->db->get_where('tbl_kabkot',array('provinsi_id' => $id))->result_array();
		echo json_encode($kota);
	}

	public function get_kecamatan($id){
		$kota = $this->db->get_where('tbl_kecamatan',array('kabkot_id' => $id))->result_array();
		echo json_encode($kota);
	}

	public function get_kelurahan($id){
		$kelurahan = $this->db->get_where('tbl_kelurahan',array('kecamatan_id' => $id))->result_array();
		echo json_encode($kelurahan);
	}

	public function get_kodepost($id){
		$kodepost = $this->db->get_where('tbl_kelurahan',array('id' => $id))->result_array();
		echo json_encode($kodepost);
	}
}