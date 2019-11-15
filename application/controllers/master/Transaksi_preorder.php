<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Transaksi_preorder extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "Pesanan";
		$this->template->load('template/template', 'master/transaksi_preorder/all-transaksi_preorder', $data);
	}

	public function Proses()
	{
		$data['page_name'] = "Proses";
		$this->template->load('template/template', 'master/transaksi_preorder/proses-transaksi_preorder', $data);
	}

	public function Selesai()
	{
		$data['page_name'] = "Proses";
		$this->template->load('template/template', 'master/transaksi_preorder/selesai-transaksi_preorder', $data);
	}

	public function create()
	{
		$data['produk'] = $this->mymodel->selectWithQuery("SELECT master_produk.*, file.dir FROM master_produk
			LEFT JOIN file on master_produk.id = file.table_id
			WHERE master_produk.status = 'ENABLE' AND file.table = 'master_produk'");
		$data['page_name'] = "Pesanan";
		$this->template->load('template/template', 'master/transaksi_preorder/add-transaksi_preorder', $data);
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[id_customer]', '<strong>Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[jumlah_bayar]', '<strong>Bayar</strong>', 'required');
	}

	public function checkstockkemasan()
	{
		$error = '';
		for ($i = 0; $i < count($_POST['kemasanId']); $i++) {
			$kemasan = $this->mymodel->selectDataone('master_kemasan', array('id' => $_POST['kemasanId'][$i]));
			if ($kemasan['stok'] < $_POST['kemasanQty'][$i]) {
				$error .= '<li> Kemasan <b>' . $kemasan['value'] . '</b> Tidak Memiliki Cukup Stok </li>';
			}
		}

		if ($error == '') {
			return true;
		} else {
			$this->alert->alertdanger($error);
			return false;
		}
	}

	public function store()
	{

		$idUser = $this->session->userdata('id');
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			if (!$this->checkstockkemasan()) {
				return false;
			} else {
				$chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
				$res = "INVL-";
				for (;;) {
					for ($i = 0; $i < 5; $i++) {
						$res .= $chars[mt_rand(0, strlen($chars) - 1)];
					}

					$query = $this->db->query("SELECT * FROM transaksi WHERE kode_transaksi='$res'")->result();
					if (count($query) == 0) {
						break;
					} else { }
				}

				$harga_subtotal = 0;
				for ($i = 0; $i < count($_POST['idd']); $i++) {
					$total_harga = $_POST['prc'][$i] * $_POST['qtt'][$i];
					$diskon = $total_harga * ($_POST['diskon'][$i] / 100);
					$harga_total = $total_harga - $diskon;

					$dtd['kode_transaksi'] = $res;
					$dtd['id_produk_preorder'] = $_POST['idd'][$i];
					$dtd['qty'] = $_POST['qtt'][$i];
					$dtd['ukuran'] = $_POST['ukuran'][$i];
					$dtd['warna'] = $_POST['warna'][$i];
					$dtd['keterangan'] = $_POST['keterangan'][$i];
					$dtd['harga_satuan'] = $_POST['prc'][$i];
					$dtd['biaya_lain'] = $_POST['biayalain'][$i];
					$dtd['diskon'] = $_POST['diskon'][$i];
					$dtd['harga_total'] = strval($harga_total + $_POST['biayalain'][$i]);
					$dtd['status'] = "ENABLE";
					$dtd['created_at'] = date('Y-m-d H:i:s');
					$dtd['updated_at'] = date('Y-m-d H:i:s');
					$dtd['created_by'] = $idUser;
					$dtd['id_suplier'] = $_POST['suplier'][$i];
					$this->db->insert('transaksi_produk', $dtd);

					$harga_subtotal += $harga_total + $_POST['biayalain'][$i];
				}

				for ($j = 0; $j < count($_POST['kemasanId']); $j++) {
					$dtkemasan['kode_transaksi'] = $res;
					$dtkemasan['id_kemasan'] = $_POST['kemasanId'][$j];
					$dtkemasan['qty'] = $_POST['kemasanQty'][$j];
					$dtkemasan['harga_total'] = $_POST['kemasanHargaTotal'][$j];
					$dtkemasan['status'] = "ENABLE";
					$dtkemasan['created_at'] = date('Y-m-d H:i:s');
					$dtkemasan['updated_at'] = date('Y-m-d H:i:s');
					$this->db->insert('transaksi_kemasan', $dtkemasan);

					$kemasan = $this->mymodel->selectDataone('master_kemasan', array('id' => $_POST['kemasanId'][$j]));
					$kurangkemasan['stok'] = $kemasan['stok'] - $_POST['kemasanQty'][$j];
					$this->mymodel->updateData('master_kemasan', $kurangkemasan, array('id' => $_POST['kemasanId'][$j]));
					$harga_subtotal += $_POST['kemasanHargaTotal'][$j];
				}

				$dt = $_POST['dt'];
				$dt['kode_transaksi'] = $res;
				$dt['sub_total'] = strval($harga_subtotal + $_POST['dt']['biaya_kirim']);
				$dt['kembalian'] = strval($_POST['dt']['jumlah_bayar'] - ($harga_subtotal + $_POST['dt']['biaya_kirim']));
				$dt['resi_pengiriman'] = '';
				$dt['tipe'] = 'Preorder';
				$dt['status_order'] = 'Pesanan Baru';
				$dt['status_pengiriman'] = 'Belum Dikirim';
				$dt['status_pembayaran'] = 'Belum Dibayar';
				$dt['created_by'] = $idUser;
				$dt['status'] = "ENABLE";
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['updated_at'] = date('Y-m-d H:i:s');
				$this->db->insert('transaksi', $dt);

				$anggota = $this->mymodel->selectDataone('customer', array('id' => $_POST['dt']['id_customer']));
				$name = $anggota['nama_customer'];
				$toemail = $anggota['email_customer'];

				$subjectemail = 'Invoice Order';
				$content = 'Terima Kasih sudah memesan produk kami, mohon segera selesaikan pembayaran anda.';
				$content2 = 'https://dev.karyastudio.com/shoekashoes/master/Transaksi_preorder/cetak/'.$dt['kode_transaksi'] = $res;
				$button = '';

				$this->sendemail->kirimemail($name, $toemail, $subjectemail, $content, $content2, $button);
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

		$this->datatables->select('a.id as id, a.kode_transaksi as kode_transaksi, c.nama_customer as id_customer, d.value as id_kurir, a.biaya_kirim as biaya_kirim, a.jumlah_bayar as jumlah_bayar, a.sub_total as sub_total, a.kembalian as kembalian, b.value as id_bank, c.nama_customer as id_dropshipper, a.status_order as status_order, DATE_FORMAT(a.created_at, "%d %b %Y") as created_at, a.status as status, DATE_FORMAT(a.tgl_status_order, "%d %b %Y") as tgl_status_order, a.status_pembayaran as status_pembayaran, DATE_FORMAT(a.tgl_status_pembayaran, "%d %b %Y") as tgl_status_pembayaran');
		$this->datatables->join('customer c', "c.id = a.id_customer", 'left');
		$this->datatables->join('master_kurir d', "d.id = a.id_kurir", 'left');
		$this->datatables->join('master_bank b', "b.id = a.id_bank", 'left');
		$this->datatables->where('a.tipe', 'Preorder');
		$this->datatables->where('a.status_order', 'Pesanan Baru');
		$this->datatables->where('a.status', $status);
		$this->datatables->from('transaksi a');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-info" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> HAPUS</button></div>', 'id');
		}
		echo $this->datatables->generate();
	}

	public function jsonproses()
	{
		header('Content-Type: application/json');

		$this->datatables->select('a.id as id, a.kode_transaksi as kode_transaksi, DATE_FORMAT(a.tgl_status_order, "%d %b %Y") as tgl_status_order, c.nama_customer as id_customer, a.biaya_kirim as biaya_kirim, d.value as id_kurir, a.resi_pengiriman as resi_pengiriman, a.jumlah_bayar as jumlah_bayar, a.sub_total as sub_total, a.kembalian as kembalian, b.value as id_bank, c.nama_customer as id_dropshipper, a.status_order as status_order, a.status_pengiriman as status_pengiriman, DATE_FORMAT(a.tgl_status_pengiriman, "%d %b %Y") as tgl_status_pengiriman, a.status_pembayaran as status_pembayaran, DATE_FORMAT(a.tgl_status_pembayaran, "%d %b %Y") as tgl_status_pembayaran');
		$this->datatables->join('customer c', "c.id = a.id_customer", 'left');
		$this->datatables->join('master_kurir d', "d.id = a.id_kurir", 'left');
		$this->datatables->join('master_bank b', "b.id = a.id_bank", 'left');
		$this->datatables->where('a.status', 'ENABLE');
		$this->datatables->where('a.status_order', 'Diproses');
		$this->datatables->where('a.tipe', 'Preorder');
		$this->datatables->from('transaksi a');
		$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-info" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button></div>', 'id');
		echo $this->datatables->generate();
	}


	public function jsonselesai()
	{
		header('Content-Type: application/json');

		$this->datatables->select('a.id as id, a.kode_transaksi as kode_transaksi, DATE_FORMAT(a.tgl_status_order, "%d %b %Y") as tgl_status_order, c.nama_customer as id_customer, a.biaya_kirim as biaya_kirim, d.value as id_kurir, a.resi_pengiriman as resi_pengiriman, a.jumlah_bayar as jumlah_bayar, a.sub_total as sub_total, a.kembalian as kembalian, b.value as id_bank, c.nama_customer as id_dropshipper, a.status_order as status_order, a.status_pengiriman as status_pengiriman, DATE_FORMAT(a.tgl_status_pengiriman, "%d %b %Y") as tgl_status_pengiriman, a.status_pembayaran as status_pembayaran, DATE_FORMAT(a.tgl_status_pembayaran, "%d %b %Y") as tgl_status_pembayaran');
		$this->datatables->join('customer c', "c.id = a.id_customer", 'left');
		$this->datatables->join('master_kurir d', "d.id = a.id_kurir", 'left');
		$this->datatables->join('master_bank b', "b.id = a.id_bank", 'left');
		$this->datatables->where('a.tipe', 'Preorder');
		$this->datatables->where('a.status_order NOT LIKE "Pesanan Baru"');
		$this->datatables->where('a.status_order NOT LIKE "Diproses"');
		$this->datatables->where('a.status', 'ENABLE');
		$this->datatables->from('transaksi a');
		$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-info" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button></div>', 'id');

		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['transaksi_preorder'] = $this->mymodel->selectDataone('transaksi_preorder', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'transaksi_preorder'));
		$data['page_name'] = "transaksi_preorder";
		$this->template->load('template/template', 'master/transaksi_preorder/edit-transaksi_preorder', $data);
	}

	public function status($id, $status)
	{
		$this->mymodel->updateData('transaksi', array('status' => $status), array('id' => $id));
		redirect(base_url('master/Transaksi_preorder'));
	}

	public function inv($id)
	{
		$data['page_name'] = "Pesanan";
		$data['transaksi'] = $this->mymodel->selectDataone('transaksi',  array('id' => $id));
		$data['customer'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_customer']));
		$data['kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['customer']['id_kelurahan']));
		$data['kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['customer']['id_kecamatan']));
		$data['kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['customer']['id_kabkot']));
		$data['provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['customer']['id_provinsi']));

		$data['dropshipper'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_dropshipper']));
		$data['dropshipper_kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['dropshipper']['id_kelurahan']));
		$data['dropshipper_kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['dropshipper']['id_kecamatan']));
		$data['dropshipper_kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['dropshipper']['id_kabkot']));
		$data['dropshipper_provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['dropshipper']['id_provinsi']));

		$data['kurir'] = $this->mymodel->selectDataone('master_kurir',  array('id' => $data['transaksi']['id_kurir']));
		$data['transaksi_produk'] = $this->mymodel->selectWhere('transaksi_produk',  array('kode_transaksi' => $data['transaksi']['kode_transaksi']));
		$data['transaksi_kemasan'] = $this->mymodel->selectWhere('transaksi_kemasan',  array('kode_transaksi' => $data['transaksi']['kode_transaksi']));

		$this->template->load('template/template', 'master/transaksi_preorder/inv', $data);
	}


	public function cetak($id)
	{
		$data['page_name'] = "Pesanan";
		$data['transaksi'] = $this->mymodel->selectDataone('transaksi',  array('kode_transaksi' => $id));
		$data['customer'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_customer']));
		$data['kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['customer']['id_kelurahan']));
		$data['kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['customer']['id_kecamatan']));
		$data['kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['customer']['id_kabkot']));
		$data['provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['customer']['id_provinsi']));
		$data['kurir'] = $this->mymodel->selectDataone('master_kurir',  array('id' => $data['transaksi']['id_kurir']));

		$data['dropshipper'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_dropshipper']));
		$data['dropshipper_kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['dropshipper']['id_kelurahan']));
		$data['dropshipper_kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['dropshipper']['id_kecamatan']));
		$data['dropshipper_kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['dropshipper']['id_kabkot']));
		$data['dropshipper_provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['dropshipper']['id_provinsi']));

		$data['transaksi_produk'] = $this->mymodel->selectWhere('transaksi_produk',  array('kode_transaksi' => $data['transaksi']['kode_transaksi']));
		$data['transaksi_kemasan'] = $this->mymodel->selectWhere('transaksi_kemasan',  array('kode_transaksi' => $data['transaksi']['kode_transaksi']));

		$this->load->view('master/transaksi_preorder/print', $data);
	}


	public function form_kirim($id)
	{
		$data['page_name'] = "Pesanan";
		$data['transaksi'] = $this->mymodel->selectDataone('transaksi',  array('id' => $id));
		$data['customer'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_customer']));
		$data['kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['customer']['id_kelurahan']));
		$data['kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['customer']['id_kecamatan']));
		$data['kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['customer']['id_kabkot']));
		$data['provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['customer']['id_provinsi']));
		$data['kurir'] = $this->mymodel->selectDataone('master_kurir',  array('id' => $data['transaksi']['id_kurir']));

		$data['dropshipper'] = $this->mymodel->selectDataone('customer',  array('id' => $data['transaksi']['id_dropshipper']));
		$data['dropshipper_kelurahan'] = $this->mymodel->selectDataone('tbl_kelurahan',  array('id' => $data['dropshipper']['id_kelurahan']));
		$data['dropshipper_kecamatan'] = $this->mymodel->selectDataone('tbl_kecamatan',  array('id' => $data['dropshipper']['id_kecamatan']));
		$data['dropshipper_kabupaten'] = $this->mymodel->selectDataone('tbl_kabkot',  array('id' => $data['dropshipper']['id_kabkot']));
		$data['dropshipper_provinsi'] = $this->mymodel->selectDataone('tbl_provinsi',  array('id' => $data['dropshipper']['id_provinsi']));

		$this->load->view('master/transaksi_preorder/form_kirim', $data);
	}

	public function kirim($id)
	{
		$data['transaksi'] = $this->mymodel->selectDataone('transaksi', array('id' => $id));
		$data['page_name'] = "Pesanan";
		$this->load->view('master/transaksi_preorder/approve', $data);
	}

	public function cicil($id)
	{
		$data['transaksi'] = $this->mymodel->selectDataone('transaksi', array('id' => $id));
		$data['page_name'] = "Pesanan";
		$this->load->view('master/transaksi_preorder/cicil', $data);
	}

	public function validateKirim()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[id_kurir]', '<strong>Pengiriman Kurir</strong>', 'required');
		$this->form_validation->set_rules('dt[resi_pengiriman]', '<strong>No Resi</strong>', 'required');
	}

	public function approvekirim()
	{
		$idUser = $this->session->userdata('id');
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validateKirim();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt['id_kurir'] = $_POST['dt']['id_kurir'];
			$dt['resi_pengiriman'] = $_POST['dt']['resi_pengiriman'];
			$dt['status_pengiriman'] = 'Sudah Dikirim';
			$dt['tgl_status_pengiriman'] = date('Y-m-d H:i:s');
			$dt['updated_at'] = date('Y-m-d H:i:s');
			$this->mymodel->updateData('transaksi', $dt, array('id' => $_POST['dt']['id']));
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function validatelunasproses()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[jumlah_bayar]', '<strong>Bayar Cicilan</strong>', 'required');
	}

	public function lunasproses()
	{
		$idUser = $this->session->userdata('id');
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validatelunasproses();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$harga = $this->mymodel->selectDataone('transaksi', array('id' => $_POST['dt']['id']));
			$bayar = $harga['jumlah_bayar'] + $_POST['dt']['jumlah_bayar'];

			if ($bayar >= $harga['sub_total']) {
				$dt['status_pembayaran'] = 'Lunas';
			} else {
				$dt['status_pembayaran'] = 'Belum Lunas';
			}

			$dt['jumlah_bayar'] = $bayar;
			$dt['tgl_status_pembayaran'] = date('Y-m-d H:i:s');
			$dt['kembalian'] = $bayar - $harga['sub_total'];
			$dt['updated_at'] = date('Y-m-d H:i:s');
			$this->mymodel->updateData('transaksi', $dt, array('id' => $_POST['dt']['id']));
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function lunas($id)
	{
		$dt['status_pembayaran'] = 'Lunas';
		$dt['tgl_status_pembayaran'] = date('Y-m-d H:i:s');
		$this->mymodel->updateData('transaksi', $dt, array('id' => $id));
		$this->alert->alertsuccess('Success Send Data');
		redirect(base_url('master/transaksi_preorder'));
	}

	public function actionproses($id)
	{
		$status_pembayaran = $this->mymodel->selectDataone('transaksi', array('id' => $id));
		if ($status_pembayaran['status_pembayaran'] != 'Lunas') {
			$this->alert->alertdanger('Mohon Untuk Melakukan Pelunasan Pembayaran Transaksi Terlebih Dahulu!');
			return false;
		} else {
			$dt['status_order'] = 'Diproses';
			$dt['tgl_status_order'] = date('Y-m-d H:i:s');
			$dt['updated_at'] = date('Y-m-d H:i:s');
			$this->mymodel->updateData('transaksi', $dt, array('id' => $id));
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function actionselesai($id)
	{
		$no_resi = $this->mymodel->selectDataone('transaksi', array('id' => $id));
		if (!$no_resi['resi_pengiriman']) {
			$this->alert->alertdanger('Mohon Untuk Melakukan Pengiriman Barang Terlebih Dahulu!');
			return false;
		} else {
			$dt['status_order'] = 'Selesai';
			$dt['tgl_status_order'] = date('Y-m-d H:i:s');
			$dt['updated_at'] = date('Y-m-d H:i:s');
			$this->mymodel->updateData('transaksi', $dt, array('id' => $id));
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function actioncancel($id)
	{
		$dt['status_order'] = 'Cancel';
		$dt['tgl_status_order'] = date('Y-m-d H:i:s');
		$dt['updated_at'] = date('Y-m-d H:i:s');
		$this->mymodel->updateData('transaksi', $dt, array('id' => $id));
		$this->alert->alertsuccess('Success Send Data');
		redirect(base_url('master/transaksi_preorder/selesai'));
	}
}
