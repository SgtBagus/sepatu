

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "customer";
		$this->template->load('template/template', 'master/customer/all-customer', $data);
	}

	public function create()
	{
		$data['page_name'] = "customer";
		$this->template->load('template/template', 'master/customer/add-customer', $data);
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[jenis_pembeli]', '<strong>Jenis Pembeli</strong>', 'required');
		$this->form_validation->set_rules('dt[nama_customer]', '<strong>Nama Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[id_provinsi]', '<strong>Provinsi</strong>', 'required');
		$this->form_validation->set_rules('dt[id_kabkot]', '<strong>Kota/Kabupaten</strong>', 'required');
		$this->form_validation->set_rules('dt[id_kecamatan]', '<strong>Kecamatan</strong>', 'required');
		$this->form_validation->set_rules('dt[id_kelurahan]', '<strong>Kelurahan/Desan</strong>', 'required');
		$this->form_validation->set_rules('dt[kode_post]', '<strong>Kode Pos</strong>', 'required');
		$this->form_validation->set_rules('dt[alamat_customer]', '<strong>Alamat Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[hp_customer]', '<strong>Hp Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[email_customer]', '<strong>Email Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[id_sumtrafik]', '<strong>Email Customer</strong>', 'required');
	}

	public function store()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['created_by'] = $this->session->userdata('id');
			$dt['status'] = "ENABLE";
			$this->db->insert('customer', $dt);
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
		$this->datatables->select('id,nama_customer,alamat_customer,hp_customer,email_customer,status');
		$this->datatables->where('status', $status);
		$this->datatables->from('customer');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}
		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['customer'] = $this->mymodel->selectDataone('customer', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'customer'));
		$data['page_name'] = "customer";
		$this->template->load('template/template', 'master/customer/edit-customer', $data);
	}

	public function update()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$id = $_POST['id'];
			$dt = $_POST['dt'];
			$dt['updated_at'] = date("Y-m-d H:i:s");
			$this->mymodel->updateData('customer', $dt, array('id' => $id));
			$this->alert->alertsuccess('Success Update Data');
		}
	}

	public function delete()
	{
		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'customer'));
		@unlink($file['dir']);
		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'customer'));
		$this->mymodel->deleteData('customer',  array('id' => $id));
		$this->alert->alertdanger('Success Delete Data');
	}

	public function status($id, $status)
	{
		$this->mymodel->updateData('customer', array('status' => $status), array('id' => $id));
		redirect('master/Customer');
	}
}

?>