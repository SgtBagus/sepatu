

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');



class Suplier extends MY_Controller
{



	public function __construct()

	{

		parent::__construct();
	}



	public function index()

	{

		$data['page_name'] = "suplier";

		$this->template->load('template/template', 'master/suplier/all-suplier', $data);
	}

	public function create()

	{

		$this->load->view('master/suplier/add-suplier');
	}

	public function validate()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');

		$this->form_validation->set_rules('dt[nama_suplier]', '<strong>Nama Suplier</strong>', 'required');
		$this->form_validation->set_rules('dt[alamat_suplier]', '<strong>Alamat Suplier</strong>', 'required');
		$this->form_validation->set_rules('dt[hp_suplier]', '<strong>Hp Suplier</strong>', 'required');
		$this->form_validation->set_rules('dt[id_kategori]', '<strong>Id Kategori</strong>', 'required');
		// $this->form_validation->set_rules('dt[created_by]', '<strong>Created By</strong>', 'required');
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

			$str = $this->db->insert('suplier', $dt);

			$last_id = $this->db->insert_id();
			if (!empty($_FILES['file']['name'])) {

				$dir  = "webfile/";

				$config['upload_path']          = $dir;

				$config['allowed_types']        = '*';

				$config['file_name']           = md5('smartsoftstudio') . rand(1000, 100000);



				$this->load->library('upload', $config);

				if (!$this->upload->do_upload('file')) {

					$error = $this->upload->display_errors();

					$this->alert->alertdanger($error);
				} else {

					$file = $this->upload->data();

					$data = array(

						'id' => '',

						'name' => $file['file_name'],

						'mime' => $file['file_type'],

						'dir' => $dir . $file['file_name'],

						'table' => 'suplier',

						'table_id' => $last_id,

						'status' => 'ENABLE',

						'created_at' => date('Y-m-d H:i:s')

					);

					$str = $this->db->insert('file', $data);

					$this->alert->alertsuccess('Success Send Data');
				}
			} else {

				$data = array(

					'id' => '',

					'name' => '',

					'mime' => '',

					'dir' => '',

					'table' => 'suplier',

					'table_id' => $last_id,

					'status' => 'ENABLE',

					'created_at' => date('Y-m-d H:i:s')

				);



				$str = $this->db->insert('file', $data);

				$this->alert->alertsuccess('Success Send Data');
			}
		}
	}



	public function json()

	{

		$status = $_GET['status'];

		if ($status == '') {

			$status = 'ENABLE';
		}

		header('Content-Type: application/json');

		$this->datatables->select('suplier.id,nama_suplier,alamat_suplier,hp_suplier,master_kategori_suplier.nama_kategori as id_kategori,user.name as created_by,suplier.status');

		$this->datatables->where('suplier.status', $status);

		$this->datatables->from('suplier');
		$this->datatables->join('master_kategori_suplier', 'suplier.id_kategori = master_kategori_suplier.id', 'left');
		$this->datatables->join('user', 'suplier.created_by = user.id', 'left');

		if ($status == "ENABLE") {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}

		echo $this->datatables->generate();
	}

	public function edit($id)

	{

		$data['suplier'] = $this->mymodel->selectDataone('suplier', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'suplier'));
		$data['page_name'] = "suplier";

		$this->load->view('master/suplier/edit-suplier', $data);
	}





	public function update()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');



		$this->validate();





		if ($this->form_validation->run() == FALSE) {

			$this->alert->alertdanger(validation_errors());
		} else {

			$id = $this->input->post('id', TRUE);

			if (!empty($_FILES['file']['name'])) {

				$dir  = "webfile/";

				$config['upload_path']          = $dir;

				$config['allowed_types']        = '*';

				$config['file_name']           = md5('smartsoftstudio') . rand(1000, 100000);

				$this->load->library('upload', $config);

				if (!$this->upload->do_upload('file')) {

					$error = $this->upload->display_errors();

					$this->alert->alertdanger($error);
				} else {

					$file = $this->upload->data();

					$data = array(

						'name' => $file['file_name'],

						'mime' => $file['file_type'],

						// 'size'=> $file['file_size'],

						'dir' => $dir . $file['file_name'],

						'table' => 'suplier',

						'table_id' => $id,

						'updated_at' => date('Y-m-d H:i:s')

					);

					$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'suplier'));

					@unlink($file['dir']);

					if ($file == "") {

						$this->mymodel->insertData('file', $data);
					} else {

						$this->mymodel->updateData('file', $data, array('id' => $file['id']));
					}





					$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$this->mymodel->updateData('suplier', $dt, array('id' => $id));



					$this->alert->alertsuccess('Success Update Data');
				}
			} else {

				$dt = $_POST['dt'];

				$dt['updated_at'] = date("Y-m-d H:i:s");

				$this->mymodel->updateData('suplier', $dt, array('id' => $id));

				$this->alert->alertsuccess('Success Update Data');
			}
		}
	}



	public function delete()

	{

		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'suplier'));

		@unlink($file['dir']);

		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'suplier'));



		$this->mymodel->deleteData('suplier',  array('id' => $id));
		$this->alert->alertdanger('Success Delete Data');
	}



	public function status($id, $status)

	{

		$this->mymodel->updateData('suplier', array('status' => $status), array('id' => $id));

		redirect('master/Suplier');
	}
}

?>