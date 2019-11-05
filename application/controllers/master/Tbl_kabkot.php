

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Tbl_kabkot extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "tbl_kabkot";

			$this->template->load('template/template','master/tbl_kabkot/all-tbl_kabkot',$data);

		}

		public function create()

		{

			$this->load->view('master/tbl_kabkot/add-tbl_kabkot');

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[provinsi_id]', '<strong>Provinsi Id</strong>', 'required');
$this->form_validation->set_rules('dt[kabupaten_kota]', '<strong>Kabupaten Kota</strong>', 'required');
$this->form_validation->set_rules('dt[ibukota]', '<strong>Ibukota</strong>', 'required');
$this->form_validation->set_rules('dt[k_bsni]', '<strong>K Bsni</strong>', 'required');
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

				$str = $this->db->insert('tbl_kabkot', $dt);

				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   

					

			}

		}



		public function json()

		{


			header('Content-Type: application/json');

	        $this->datatables->select('a.id,b.provinsi as provinsi_id,a.kabupaten_kota,a.ibukota,a.k_bsni');
			$this->datatables->join('tbl_provinsi b', "b.id = a.provinsi_id", 'left');
	        $this->datatables->from('tbl_kabkot a');

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['tbl_kabkot'] = $this->mymodel->selectDataone('tbl_kabkot',array('id'=>$id));$data['page_name'] = "tbl_kabkot";

			$this->load->view('master/tbl_kabkot/edit-tbl_kabkot',$data);

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

					$this->mymodel->updateData('tbl_kabkot', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     

		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_kabkot',array('status'=>$status),array('id'=>$id));

			redirect('master/Tbl_kabkot');

		}





	}

?>