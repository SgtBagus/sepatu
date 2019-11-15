

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Produk_ready extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "produk_ready";

			$this->template->load('template/template','master/produk_ready/all-produk_ready',$data);

		}

		public function create()

		{

			$data['page_name'] = "produk_ready";

			$this->template->load('template/template','master/produk_ready/add-produk_ready',$data);

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[id_suplier]', '<strong>Id Suplier</strong>', 'required');
$this->form_validation->set_rules('dt[id_kategori]', '<strong>Id Kategori</strong>', 'required');
$this->form_validation->set_rules('dt[id_bahanbaku]', '<strong>Id Bahanbaku</strong>', 'required');
$this->form_validation->set_rules('dt[kode_barang]', '<strong>Kode Barang</strong>', 'required');
$this->form_validation->set_rules('dt[nama_produk]', '<strong>Nama Produk</strong>', 'required');
$this->form_validation->set_rules('dt[jumlah_stok]', '<strong>Jumlah Stok</strong>', 'required');
$this->form_validation->set_rules('dt[ukuran_produk]', '<strong>Ukuran Produk</strong>', 'required');
$this->form_validation->set_rules('dt[warna_produk]', '<strong>Warna Produk</strong>', 'required');
$this->form_validation->set_rules('dt[ket_produk]', '<strong>Ket Produk</strong>', 'required');
$this->form_validation->set_rules('dt[harga_produksi]', '<strong>Harga Produksi</strong>', 'required');
$this->form_validation->set_rules('dt[harga_jual]', '<strong>Harga Jual</strong>', 'required');
// $this->form_validation->set_rules('dt[created_by]', '<strong>Created By</strong>', 'required');
	}



		public function store()

		{

			$this->validate();

	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

	        	$dt = $_POST['dt'];

				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['created_by'] = $this->session->userdata('id');

				$dt['status'] = "ENABLE";

				$str = $this->db->insert('produk_ready', $dt);

				$last_id = $this->db->insert_id();	    if (!empty($_FILES['file']['name'])){

		        	$dir  = "webfile/";

					$config['upload_path']          = $dir;

					$config['allowed_types']        = '*';

					$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);



					$this->load->library('upload', $config);

					if ( ! $this->upload->do_upload('file')){

						$error = $this->upload->display_errors();

						$this->alert->alertdanger($error);		

					}else{

					   	$file = $this->upload->data();

						$data = array(

					   				'id' => '',

					   				'name'=> $file['file_name'],

					   				'mime'=> $file['file_type'],

					   				'dir'=> $dir.$file['file_name'],

					   				'table'=> 'produk_ready',

					   				'table_id'=> $last_id,

					   				'status'=>'ENABLE',

					   				'created_at'=>date('Y-m-d H:i:s')

					   	 		);

					   	$str = $this->db->insert('file', $data);

						$this->alert->alertsuccess('Success Send Data');    

					} 

				}else{

					$data = array(

				   				'id' => '',

				   				'name'=> '',

				   				'mime'=> '',

				   				'dir'=> '',

				   				'table'=> 'produk_ready',

				   				'table_id'=> $last_id,

				   				'status'=>'ENABLE',

				   				'created_at'=>date('Y-m-d H:i:s')

				   	 		);



				   	$str = $this->db->insert('file', $data);

					$this->alert->alertsuccess('Success Send Data');



					}

					    

					

			}

		}



		public function json()

		{

			$status = $_GET['status'];

			if($status==''){

				$status = 'ENABLE';

			}

			header('Content-Type: application/json');

	        $this->datatables->select('produk_ready.id,suplier.nama_suplier as id_suplier,master_kategori_produk.nama_kategori as id_kategori,master_bahanbaku.nama_bahanbaku as id_bahanbaku,produk_ready.kode_barang,produk_ready.nama_produk,produk_ready.jumlah_stok,produk_ready.ukuran_produk,produk_ready.warna_produk,produk_ready.ket_produk,produk_ready.harga_produksi,produk_ready.harga_jual,user.name as created_by,produk_ready.status');

	        $this->datatables->where('produk_ready.status',$status);

	        $this->datatables->from('produk_ready');
			$this->datatables->join('user', 'produk_ready.created_by = user.id', 'left');
			$this->datatables->join('suplier', 'produk_ready.id_suplier = suplier.id', 'left');
			$this->datatables->join('master_kategori_produk', 'produk_ready.id_kategori = master_kategori_produk.id', 'left');
			$this->datatables->join('master_bahanbaku', 'produk_ready.id_bahanbaku = master_bahanbaku.id', 'left');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['produk_ready'] = $this->mymodel->selectDataone('produk_ready',array('id'=>$id));$data['file'] = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'produk_ready'));$data['page_name'] = "produk_ready";

			$this->template->load('template/template','master/produk_ready/edit-produk_ready',$data);

		}





		public function update()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

			

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);

	        	if (!empty($_FILES['file']['name'])){

	        		$dir  = "webfile/";

					$config['upload_path']          = $dir;

					$config['allowed_types']        = '*';

					$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);

	        		$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('file')){

						$error = $this->upload->display_errors();

						$this->alert->alertdanger($error);		

					}else{

						$file = $this->upload->data();

						$data = array(

					   				'name'=> $file['file_name'],

					   				'mime'=> $file['file_type'],

					   				// 'size'=> $file['file_size'],

					   				'dir'=> $dir.$file['file_name'],

					   				'table'=> 'produk_ready',

					   				'table_id'=> $id,

					   				'updated_at'=>date('Y-m-d H:i:s')

					   	 		);

						$file = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'produk_ready'));

						@unlink($file['dir']);

						if($file==""){

							$this->mymodel->insertData('file', $data);

						}else{

							$this->mymodel->updateData('file', $data , array('id'=>$file['id']));

						}

						



						$dt = $_POST['dt'];

						$dt['updated_at'] = date("Y-m-d H:i:s");

						$this->mymodel->updateData('produk_ready', $dt , array('id'=>$id));



						$this->alert->alertsuccess('Success Update Data');  

					}

				}else{

					$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$this->mymodel->updateData('produk_ready', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  

				}}

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);$file = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'produk_ready'));

				@unlink($file['dir']);

				$this->mymodel->deleteData('file',  array('table_id'=>$id,'table'=>'produk_ready'));



				$this->mymodel->deleteData('produk_ready',  array('id'=>$id));$this->alert->alertdanger('Success Delete Data');     

		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('produk_ready',array('status'=>$status),array('id'=>$id));

			redirect('master/Produk_ready');

		}





	}

?>