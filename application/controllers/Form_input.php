<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Form_input extends My_Controller {

	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		$data['page_name'] = "Form_input";
		$this->template->load('template/template','form_input/index',$data);
	}

	public function ajaxGetAutocompleteCustomer()
	{
		$paramget = $this->input->get();
		$this->db->like('nama', $paramget['term']);
		$customer = $this->mymodel->selectWhere('customer',array('status'=>'ENABLE'));
		$result =  array();
		foreach ($customer as $key => $value) {
		    $result[]     = array(
		        'label' => $value['nama'], 
		        'nama' => $value['nama'],
		        'email' => $value['email'],
		        'telp' => $value['telp'],
		        'alamat' => $value['alamat'],
		    );
		}

		echo json_encode($result);
	}

	public function ajaxGetSelectCustomer()
	{
		$customer = $this->mymodel->selectWhere('customer',array('status'=>'ENABLE'));
		$result = '<option value="">--Pilih Customer--</option>';
		foreach ($customer as $key => $value) {
			$result .= '<option value="'.$value['id'].'">'.$value['nama'].'</option>';
		}
		echo $result;
	}

	public function ajaxTambahCustomer()
	{
		# code...
	}

}

/* End of file Tinymce.php */
/* Location: ./application/controllers/Tinymce.php */