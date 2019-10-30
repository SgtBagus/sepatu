<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tinymce extends My_Controller {

	public function __construct()
	{
		parent::__construct();
	}


		public function index()
	{
		$data['page_name'] = "tinymce";
		$this->template->load('template/template','tinymce/index',$data);
	}

}

/* End of file Tinymce.php */
/* Location: ./application/controllers/Tinymce.php */