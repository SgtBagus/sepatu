

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');



class Transaksi_preorder extends MY_Controller
{



	public function __construct()

	{

		parent::__construct();
	}



	public function index()

	{

		$data['page_name'] = "transaksi_preorder";

		$this->template->load('template/template', 'master/transaksi_preorder/all-transaksi_preorder', $data);
	}

	public function create()

	{
		$data['produk'] = $this->mymodel->selectWithQuery("SELECT produk_preorder.*, master_kategori_produk.nama_kategori, file.dir FROM produk_preorder
			LEFT JOIN master_kategori_produk on produk_preorder.id_kategori = master_kategori_produk.id
			LEFT JOIN file on produk_preorder.id = file.table_id
			WHERE produk_preorder.status = 'ENABLE' AND file.table = 'produk_preorder'");

		$data['page_name'] = "transaksi_preorder";

		$this->template->load('template/template', 'master/transaksi_preorder/add-transaksi_preorder', $data);
	}

	public function validate()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');

		$this->form_validation->set_rules('dt[kode_transaksi]', '<strong>Kode Transaksi</strong>', 'required');
		$this->form_validation->set_rules('dt[id_produk_preorder]', '<strong>Id Produk Preorder</strong>', 'required');
		$this->form_validation->set_rules('dt[qty]', '<strong>Qty</strong>', 'required');
		$this->form_validation->set_rules('dt[ukuran]', '<strong>Ukuran</strong>', 'required');
		$this->form_validation->set_rules('dt[warna]', '<strong>Warna</strong>', 'required');
		$this->form_validation->set_rules('dt[keterangan]', '<strong>Keterangan</strong>', 'required');
		$this->form_validation->set_rules('dt[harga_satuan]', '<strong>Harga Satuan</strong>', 'required');
		$this->form_validation->set_rules('dt[biaya_lain]', '<strong>Biaya Lain</strong>', 'required');
		$this->form_validation->set_rules('dt[diskon]', '<strong>Diskon</strong>', 'required');
		$this->form_validation->set_rules('dt[harga_total]', '<strong>Harga Total</strong>', 'required');
	}



	public function store()
	{
		$idUser = $this->session->userdata('id');
		$id = $this->input->post("idd");
		$name = $this->input->post("name");
		$pricej = $this->input->post("prc");
		$priceb = $this->input->post("prcb");
		$quantity = $this->input->post("qtt");
		$quantityTotal = 0;
		$priceBuyTotal = 0;

		$chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		$res = "INVL" . $this->session->userdata('id_cabang') . "-";
		for (;;) {
			for ($i = 0; $i < 5; $i++) {
				$res .= $chars[mt_rand(0, strlen($chars) - 1)];
			}

			$query = $this->db->query("SELECT * FROM transaksi WHERE kdTransaksi='$res'")->result();
			// echo "SELECT * FROM donasi WHERE kodeDonasi='$res'";
			if (count($query) == 0) {
				// echo 'TIDAK ADA';
				break;
			} else {
				// echo 'ADA';
			}
		}

		$dt['created_by'] = $idUser;
		$code = $idUser . date('dmYHis');
		$dt['kdTransaksi'] = $res;
		$dt['totalTransaksi'] = $this->input->post("total");
		$dt['totalBayar'] = $this->input->post("pay");
		$dt['totalKembalian'] = $this->input->post("kembalian");

		for ($i = 0; $i < count($id); $i++) {
			$productPriceBuy = $priceb[$i];
			$productPriceBuyxQuantity = $productPriceBuy * $quantity[$i];
			$priceBuyTotal = $priceBuyTotal + $productPriceBuyxQuantity;
			$quantityTotal = $quantityTotal + $quantity[$i];
		}

		$dt['totalBeliProduk'] = $priceBuyTotal;
		$dt['jumlahTransaksi'] = $quantityTotal;

		$dt['created_at'] = date('Y-m-d H:i:s');
		$dt['updated_at'] = date('Y-m-d H:i:s');
		$dt['status'] = "ENABLE";
		$dt['tipe'] = "Produk";

		// print_r($dt);
		// die();
		$Transaksi = $this->db->insert('transaksi', $dt);
		$last_id = $this->db->insert_id();
		for ($i = 0; $i < count($id); $i++) {
			$dta['idTransaksi'] = $last_id;
			$dta['idCreator'] = $idUser;
			$dta['idProduk'] = $id[$i];
			$dta['namaProduk'] = $name[$i];
			$dta['hargajProduk'] = $pricej[$i];
			$dta['hargabProduk'] = $priceb[$i];
			$dta['jumlah'] = $quantity[$i];
			$dta['status'] = "ENABLE";
			$dta['created_at'] = date('Y-m-d H:i:s');
			$dta['updated_at'] = date('Y-m-d H:i:s');

			$stok['idCreator'] = $idUser;
			$stok['idProduk'] = $id[$i];
			$stok['jumlahStok'] = $quantity[$i];
			$stok['statusStok'] = "Keluar";
			$stok['status'] = "ENABLE";
			$stok['created_at'] = date('Y-m-d H:i:s');
			$stok['updated_at'] = date('Y-m-d H:i:s');
			// print_r($dta);
			// print_r($stok);
			// die();
			$this->db->insert('transaksi_produk', $dta);
			$this->db->insert('produk_stok', $stok);
		}

		$this->alert->alertsuccess('Success Send Data');
	}



	public function json()

	{

		$status = $_GET['status'];

		if ($status == '') {

			$status = 'ENABLE';
		}

		header('Content-Type: application/json');

		$this->datatables->select('id,kode_transaksi,id_produk_preorder,qty,ukuran,warna,keterangan,harga_satuan,biaya_lain,diskon,harga_total,status');

		$this->datatables->where('status', $status);

		$this->datatables->from('transaksi_preorder');

		if ($status == "ENABLE") {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}

		echo $this->datatables->generate();
	}

	public function edit($id)

	{

		$data['transaksi_preorder'] = $this->mymodel->selectDataone('transaksi_preorder', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'transaksi_preorder'));
		$data['page_name'] = "transaksi_preorder";

		$this->template->load('template/template', 'master/transaksi_preorder/edit-transaksi_preorder', $data);
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

						'table' => 'transaksi_preorder',

						'table_id' => $id,

						'updated_at' => date('Y-m-d H:i:s')

					);

					$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'transaksi_preorder'));

					@unlink($file['dir']);

					if ($file == "") {

						$this->mymodel->insertData('file', $data);
					} else {

						$this->mymodel->updateData('file', $data, array('id' => $file['id']));
					}





					$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$this->mymodel->updateData('transaksi_preorder', $dt, array('id' => $id));



					$this->alert->alertsuccess('Success Update Data');
				}
			} else {

				$dt = $_POST['dt'];

				$dt['updated_at'] = date("Y-m-d H:i:s");

				$this->mymodel->updateData('transaksi_preorder', $dt, array('id' => $id));

				$this->alert->alertsuccess('Success Update Data');
			}
		}
	}



	public function delete()

	{

		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'transaksi_preorder'));

		@unlink($file['dir']);

		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'transaksi_preorder'));



		$this->mymodel->deleteData('transaksi_preorder',  array('id' => $id));
		$this->alert->alertdanger('Success Delete Data');
	}



	public function status($id, $status)

	{

		$this->mymodel->updateData('transaksi_preorder', array('status' => $status), array('id' => $id));

		redirect('master/Transaksi_preorder');
	}
}

?>