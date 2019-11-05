

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Tbl_provinsi extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "tbl_provinsi";

			$this->template->load('template/template','master/tbl_provinsi/all-tbl_provinsi',$data);

		}

		public function create()

		{

			$this->load->view('master/tbl_provinsi/add-tbl_provinsi');

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[provinsi]', '<strong>Provinsi</strong>', 'required');
$this->form_validation->set_rules('dt[p_bsni]', '<strong>P Bsni</strong>', 'required');
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

				$str = $this->db->insert('tbl_provinsi', $dt);

				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   

					

			}

		}



		public function json()

		{
			header('Content-Type: application/json');

	        $this->datatables->select('id,provinsi,p_bsni');

	        $this->datatables->from('tbl_provinsi');

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
			
	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['tbl_provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',array('id'=>$id));$data['page_name'] = "tbl_provinsi";

			$this->load->view('master/tbl_provinsi/edit-tbl_provinsi',$data);

		}





		public function update()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

			

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$this->mymodel->updateData('tbl_provinsi', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     

		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_provinsi',array('status'=>$status),array('id'=>$id));

			redirect('master/Tbl_provinsi');

		}





	}

?>