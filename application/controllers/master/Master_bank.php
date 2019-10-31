

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');



class Master_bank extends MY_Controller
{



	public function __construct()

	{

		parent::__construct();
	}



	public function index()

	{

		$data['page_name'] = "master_bank";

		$this->template->load('template/template', 'master/master_bank/all-master_bank', $data);
	}

	public function create()

	{

		$this->load->view('master/master_bank/add-master_bank');
	}

	public function validate()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');

		$this->form_validation->set_rules('dt[value]', '<strong>Value</strong>', 'required');
	}



	public function store()

	{

		$idUser = $this->session->userdata('id');
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['status'] = "ENABLE";
			$dt['created_by'] = $idUser;
			
			$this->db->insert('master_bank', $dt);
			
			$last_id = $this->db->insert_id();
			$this->alert->alertsuccess('Success Send Data');
		}
	}



	public function json()

	{

		$status = $_GET['status'];

		if ($status == '') {

			$status = 'ENABLE';
		}

		header('Content-Type: application/json');

		$this->datatables->select('id,value,created_by,status');

		$this->datatables->where('status', $status);

		$this->datatables->from('master_bank');

		if ($status == "ENABLE") {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}

		echo $this->datatables->generate();
	}

	public function edit($id)

	{ 

		$data['master_bank'] = $this->mymodel->selectDataone('master_bank', array('id' => $id));
		$data['page_name'] = "master_bank";

		$this->load->view('master/master_bank/edit-master_bank', $data);
	}





	public function update()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');



		$this->validate();





		if ($this->form_validation->run() == FALSE) {

			$this->alert->alertdanger(validation_errors());
		} else {

			$id = $this->input->post('id', TRUE);
			$dt = $_POST['dt'];

			$dt['updated_at'] = date("Y-m-d H:i:s");

			$this->mymodel->updateData('master_bank', $dt, array('id' => $id));

			$this->alert->alertsuccess('Success Update Data');
		}
	}



	public function delete()

	{

		$id = $this->input->post('id', TRUE);
		$this->alert->alertdanger('Success Delete Data');
	}



	public function status($id, $status)

	{

		$this->mymodel->updateData('master_bank', array('status' => $status), array('id' => $id));

		redirect('master/Master_bank');
	}
}

?>