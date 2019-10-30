<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class UploadImage extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "ImageUpload";
		$this->template->load('template/template','image_upload/index',$data);
		
	}

	public function uploadAjax()
	{
		$param = $this->input->post();
		$result = $this->upload_file('file');
		// print_r($result);
		echo $result['message']['dir'];

		$str = $this->db->insert('image', array('path'=>$result['message']['dir']));
		$this->alert->alertsuccess('Success Send Data');
	}

	public function ajaxImageUnlink($file="")
	{
		$param = $this->input->post();
		if ($file) {
			@unlink($file);
			$str = $this->db->delete('image', array('path'=>$file));
			$this->alert->alertdanger('Success Delete Data');
		}

		if (@$param['file']) {
			@unlink($param['file']);
			echo $param['file'];
			$stra = $this->db->delete('image', array('path'=>$param['file']));
			$this->alert->alertdanger('Success Delete Data');
		}
	}


}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */