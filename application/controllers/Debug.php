<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Debug extends MY_Controller {



	public function __construct()

	{

		parent::__construct();

	}



	public function index()

	{

		

	}





	// untuk mengeksport data array ke file excell

	function exportexcell()
	{
		# code... covert excell
		$judul = "test";
		$header = array('a','b','c','d','e','f');
		for ($i=0; $i < 10; $i++) {
			// ini data excel
			$data[] = array(rand(1,1000),rand(1,1000),rand(1,1000),rand(1,1000),rand(1,1000),rand(1,1000));
		}
		$this->excel->to_file($judul,$header,$data);
	}





	// untuk mengencrypt dan mengdecrypt code 

	function ecryprdecrypt()

	{
		$text = "Sm4rt50";
		$encode = $this->template->sonEncode($text);
		$decode = $this->template->sonDecode($encode);
		echo '<p>Encript : '.$encode."<br>";
		echo 'Decrypt : '.$decode."<br></p>";
	}



	function validation_form()

		{

			$data['page_name'] = "jadwal";

			$this->template->load('template/template','template/form-validation',$data);

	}









}



/* End of file Debug.php */

/* Location: ./application/controllers/Debug.php */

 ?>