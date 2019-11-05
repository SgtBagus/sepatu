

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Tbl_kelurahan extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "tbl_kelurahan";

			$this->template->load('template/template','master/tbl_kelurahan/all-tbl_kelurahan',$data);

		}

		public function create()

		{

			$this->load->view('master/tbl_kelurahan/add-tbl_kelurahan');

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[kecamatan_id]', '<strong>Kecamatan Id</strong>', 'required');
$this->form_validation->set_rules('dt[kelurahan]', '<strong>Kelurahan</strong>', 'required');
$this->form_validation->set_rules('dt[kd_pos]', '<strong>Kd Pos</strong>', 'required');
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

				$str = $this->db->insert('tbl_kelurahan', $dt);

				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   

					

			}

		}



		public function json()

		{
			header('Content-Type: application/json');
	        $this->datatables->select('a.id, b.kecamatan as kecamatan_id, a.kelurahan, a.kd_pos');
			$this->datatables->join('tbl_kecamatan b', "b.id = a.kecamatan_id", 'INNER');
	        $this->datatables->from('tbl_kelurahan a');
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['tbl_kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',array('id'=>$id));$data['page_name'] = "tbl_kelurahan";

			$this->load->view('master/tbl_kelurahan/edit-tbl_kelurahan',$data);

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

					$this->mymodel->updateData('tbl_kelurahan', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     

		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_kelurahan',array('status'=>$status),array('id'=>$id));

			redirect('master/Tbl_kelurahan');

		}





	}

?>