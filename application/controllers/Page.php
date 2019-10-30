<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class page extends MY_Controller {



	public function __construct()

	{

		parent::__construct();

	}



	public function portrait()

	{

		$this->load->view('report/portrait');

	}



	public function landscape()

	{

		$this->load->view('report/landscape');

	}



}



/* End of file Report.php */

/* Location: ./application/controllers/Report.php */