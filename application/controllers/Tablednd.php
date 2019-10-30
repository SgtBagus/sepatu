<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tablednd extends My_Controller {

	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		$data['page_name'] = "Tablednd";
		$this->template->load('template/template','tablednd/index',$data);
	}

	public function simpan()
	{
		$param = $this->input->post();
		$this->db->truncate('customer_dnd');
		foreach ($param['dt']['nama'] as $key => $value) {
			$arrayinsert = array(
				'nama' => $param['dt']['nama'][$key],
				'email' => $param['dt']['email'][$key],
				'telp' => $param['dt']['telp'][$key],
				'alamat' => $param['dt']['alamat'][$key],
				'status' => $param['dt']['status'][$key],
				'urutan' => $key,
			);
			$this->mymodel->insertData('customer_dnd',$arrayinsert);
		}
		redirect('tablednd');
	}

}

/* End of file Tinymce.php */
/* Location: ./application/controllers/Tinymce.php */