<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



abstract class MY_Controller extends CI_Controller{



	public function __construct() {

		parent::__construct();

		date_default_timezone_set("Asia/Jakarta");

		$folder = $this->router->directory;

		$class = $this->router->class;

		$method = $this->router->method;

		$role = $this->session->userdata('role_id');

		

		if($folder==""){

			$link = $class."/".$method;

		}else{

			$link = $folder.$class."/".$method;

		}



		if($this->session->userdata('session_sop')==true){

		$get_link = $this->mymodel->selectDataone('access_control',array('val'=>$link));

		$cek = $this->mymodel->selectWhere('access',array('access_control_id'=>$get_link['id'],'role_id'=>$role));

		if($link!=""){

			if(count($cek)==0){

				// redirect('/');

			}	

		}

		}



		$this->konfig();



		// JIKA INGIN MENGAKTIFKAN LOG AKTIVITAS

		// $this->log_activity();





	}



	function konfig()

	{

		$konfig = $this->mymodel->selectData('konfig');

		foreach ($konfig as $knf) {

			define($knf['slug'], $knf['value']);

		}

	}



	public function upload_file($files)

	{

		# code...

				// cara memanggil

				// $hasil = $this->upload_file('file');

				// print_r($hasil);



				$dir  = "webfile/";

				$config['upload_path']          = $dir;

				$config['allowed_types']        = '*';

				$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);

        		$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload($files)){

					$msg['response'] = false;

					$msg['message'] = $this->upload->display_errors();

						

				}else{

					$file = $this->upload->data();

					$data = array(

				   				'name'=> $file['file_name'],

				   				'mime'=> $file['file_type'],				   				

				   				'dir'=> $dir.$file['file_name'],

				   	 		);

					$msg['response'] = true;

					$msg['message'] = $data;

				}



				return $msg;



	}

	
	public function upload_file_dir($files,$dir='webfile/')

	{
	# code...
		// cara memanggil
		// $hasil = $this->upload_file('file','webfile/dokumen');
		// print_r($hasil);
		$config['upload_path']          = $dir;
		$config['allowed_types']        = '*';
		$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);
		if (!is_dir($dir)) {
		    mkdir('./'.$dir, 0777, TRUE);

		}
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload($files)){
			$msg['response'] = false;
			$msg['message'] = $this->upload->display_errors();
		}else{
			$file = $this->upload->data();
			$data = array(
		   				'name'=> $file['file_name'],
		   				'mime'=> $file['file_type'],
		   				'dir'=> $dir.$file['file_name'],
		   	 		);
			$msg['response'] = true;
			$msg['message'] = $data;
		}
		return $msg;
	}



	public function get_uri($folder="")

	{

		# code...

		if($folder!="api/"){

			$dir    =  dirname(__FILE__) .'/../controllers'.$folder;

			$files1 = scandir($dir);

			foreach ($files1 as $file) {

				$a = $file;

				if (strpos($a, '.php') !== false) {

				    $data['file'][] = $a;

				}else{

					if($a!="." AND $a!=".." AND strpos($a, '.') === false)

				    $data['folder'][] = $a;

				}

			}

			return $data;

		}

		

	}



	function log_activity()

	{

		$log['post'] = json_encode($this->input->post());

		$log['get'] = json_encode($this->input->get());

		$log['link'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

		$log['created_at'] = date('Y-m-d H:i:s');

		$log['user_id'] = $this->session->userdata('id');

		$log['ip'] = $this->input->ip_address();

		// print_r($log);

		$this->mymodel->insertData('activity',$log);

	}



	/*

	public function sendEmail()

    {

    	// $this->konfig();



       $this->load->library('email');



		$subject = 'This is a test';

		$message = '<p>This message has been sent for testing purposes.</p>';



		// Get full html:

		$body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

		<html xmlns="http://www.w3.org/1999/xhtml">

		<head>

		    <meta http-equiv="Content-Type" content="text/html; charset=' . strtolower(config_item('charset')) . '" />

		    <title>' . html_escape($subject) . '</title>

		    <style type="text/css">

		        body {

		            font-family: Arial, Verdana, Helvetica, sans-serif;

		            font-size: 16px;

		        }

		    </style>

		</head>

		<body>

		' . $message . '

		</body>

		</html>';

		// Also, for getting full html you may use the following internal method:

		//$body = $this->email->full_html($subject, $message);



		$result = $this->email

		    ->from(EMAIL_FROM)

		    ->reply_to(EMAIL_REPLY_TO)    // Optional, an account where a human being reads.

		    ->to('bayubriyanelroy@gmail.com')

		    ->subject($subject)

		    ->message($body)

		    ->send();



		var_dump($result);

		echo '<br />';

		echo $this->email->print_debugger();



		exit;

    } */



}