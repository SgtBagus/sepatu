<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Crud extends MY_Controller {



	public function __construct()

	{

		parent::__construct();

	}



	public function index()

	{

		$data['page_name'] = "crud";

		$this->template->load('template/template','crud/index',$data);

	}



	public function viewcode()

	{

		# code...

		// highlight_file('./application/controllers/master/Site.php');

	}



	public function generate()

	{

		if($_SERVER['REQUEST_METHOD']!="POST") redirect('crud');

		// print_r($_SERVER);

		$data['page_name'] = "crud";



		$this->template->load('template/template','crud/generate',$data);

		

	}



	public function get_kolom($table)

	{

		# code...

		$structure_query = "SELECT COLUMN_NAME,COLUMN_KEY,DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."'";

        $structure = $this->mymodel->selectWithQuery($structure_query);

        foreach ($structure as $stt) {

        	$data[] = array(

        					'value'=>$stt['COLUMN_NAME']

        					);

        }



        echo json_encode($data);

	}



	public function save_generate()

	{

		# code...

		$data = json_decode($_POST['json']);

		$kolom = $_POST['kolom'];

		$option = $_POST['option'];

		$value = $_POST['value'];







		// generate controller

		$c['path'] = dirname(__FILE__) ."/master/".$data->controller;

		$c['controller'] = $data->controller; 

		$c['table'] = $data->table; 

		$c['show'] = $data->show;

		$c['form_type'] = $data->form_type; 

		if(isset($data->file)){

			$c['file'] = true;

		}else{

			$c['file'] = false;

		}

		$this->load->view('crud/Controller',$c);







		//generate all view

		$a['controller'] = $data->controller; 

		$a['table'] = $data->table; 

		$a['show'] = $data->show; 

		$a['form_type'] = $data->form_type; 

		@mkdir("./application/views/master/".$data->table);

		$a['path'] = dirname(__FILE__) ."/../views/master/".$data->table."/all-".$data->table.".php";

		$this->load->view('crud/All',$a);



		//generate all add

		$ad['controller'] = $data->controller; 

		$ad['table'] = $data->table; 

		$ad['show'] = $data->show; 

		$ad['kolom'] = $data->collum; 

		$ad['type'] = $data->type; 



		$ad['select_kolom'] = $kolom;

		$ad['select_option'] = $option;

		$ad['select_value'] = $value;

		$ad['form_type'] = $data->form_type;



		if(isset($data->file)){

			$ad['file'] = true;

		}else{

			$ad['file'] = false;

		}



		$ad['path'] = dirname(__FILE__) ."/../views/master/".$data->table."/add-".$data->table.".php";

		$this->load->view('crud/Add',$ad);





		//generate edit

		$edit['controller'] = $data->controller; 

		$edit['table'] = $data->table; 

		$edit['show'] = $data->show; 

		$edit['kolom'] = $data->collum; 

		$edit['type'] = $data->type; 



		$edit['select_kolom'] = $kolom;

		$edit['select_option'] = $option;

		$edit['select_value'] = $value;

		$edit['form_type'] = $data->form_type;



		if(isset($data->file)){

			$edit['file'] = true;

		}else{

			$edit['file'] = false;

		}



		$edit['path'] = dirname(__FILE__) ."/../views/master/".$data->table."/edit-".$data->table.".php";

		$this->load->view('crud/Edit',$edit);







		$c = ucfirst(str_replace(".php", "", $data->controller));



		redirect('master/'.$c);





	}



	public function api()

	{

		$data['page_name'] = "crud";

		$data['table'] = $_GET['table'];

		$this->template->load('template/template','crud/generate-api',$data);

	}



	public function api_generate()

	{



		// generate controller

		$controller = strtolower($_POST['controller']);

		$c['path'] = dirname(__FILE__) ."/api/".ucfirst($controller).".php";

		$c['controller'] = $controller; 

		$c['table'] = $controller; 

		

		$this->load->view('crud/Api',$c);

		redirect('crud/services');



	}





	public function services()

	{

		# code...

		$data['page_name'] = "crud";

		$this->template->load('template/template','crud/config',$data);



	}







}



/* End of file Crud.php */

/* Location: ./application/controllers/Crud.php */