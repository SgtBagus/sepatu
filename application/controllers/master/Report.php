

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Report extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "report";

			$this->template->load('template/template','master/report/all-report',$data);

		}



		public function create()

		{

			$data['page_name'] = "report";

			$this->template->load('template/template','master/report/add-report',$data);

		}





		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');
			$this->form_validation->set_rules('dt[name]', '<strong>Name</strong>', 'required');
			$this->form_validation->set_rules('dt[query]', '<strong>Query</strong>', 'required');
	}



		public function store()

		{

			$this->validate();

	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

	        	$dt = $_POST['dt'];

				$dt['created_at'] = date('Y-m-d H:i:s');

				$dt['status'] = "ENABLE";

				$str = $this->db->insert('report', $dt);

				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   

					

			}

		}



		public function json()

		{

			$status = $_GET['status'];

			if($status==''){

				$status = 'ENABLE';

			}

			header('Content-Type: application/json');

	        $this->datatables->select('id,name,query,status');

	        $this->datatables->where('status',$status);

	        $this->datatables->from('report');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Generate</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Generate</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['report'] = $this->mymodel->selectDataone('report',array('id'=>$id));$data['page_name'] = "report";

			$this->template->load('template/template','master/report/edit-report',$data);

		}



		public function update()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

			

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		
				$dt = $_POST['dt'];
				$header = $_POST['header'];
				$dt['header'] = json_encode($header);

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$this->mymodel->updateData('report', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  
			}

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     

		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('report',array('status'=>$status),array('id'=>$id));

			redirect('master/Report');

		}


		function generate($id)
		{
			$report = $this->mymodel->selectDataone('report',['id'=>$id]);
			$controllerfile = ucfirst(str_replace(" ", "_", strtolower($report['name']))).".php";
			$modelfile = ucfirst(str_replace(" ", "_", "Report ".strtolower($report['name']))).".php";
			$viewfile = "all.php";
			$controller =  ucfirst(str_replace(" ", "_", strtolower($report['name'])));
			$model =  ucfirst(str_replace(" ", "_", "Report ".strtolower($report['name'])));
			$viewfolder =  str_replace(" ", "_", strtolower($report['name']));


				$c['path'] = dirname(__FILE__) ."/../report/".$controllerfile;
				$c['controller'] = $controller; 
				$c['model'] = $model; 
				$c['table'] = "table-".strtolower($controller); 
				$c['show'] = $report['header']; 



				$m['path'] = dirname(__FILE__) ."/../../models/".$modelfile;
				$m['model'] = $model; 
				$m['query'] = $report['query']; 
				$m['show'] = $report['header']; 



				$v['path'] = dirname(__FILE__) ."/../../views/report/".$viewfolder."/".$viewfile;
				$v['show'] = $report['header']; 
				$v['controller'] = $controller; 


				@mkdir("./application/views/report/".$viewfolder);


				$this->load->view('master/report/generate/Controller',$c);
				$this->load->view('master/report/generate/Model',$m);
				$this->load->view('master/report/generate/View',$v);

				redirect('report/'.$controller,'refresh');



				// $this->load->view('crud/Controller',$c);


		}



	}

?>