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
		$this->form_validation->set_rules('dt[id_customer]', '<strong>Customer</strong>', 'required');
		$this->form_validation->set_rules('dt[jumlah_bayar]', '<strong>Bayar</strong>', 'required');
	}

	public function store()
	{
		$idUser = $this->session->userdata('id');
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {

			if($_POST['dt']['jumlah_bayar'] < $_POST['dt']['sub_total']){
				$this->alert->alertdanger('Pembayaran Kurang!');
				return false;
			}

			$chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			$res = "INVL-";
			for (;;) {
				for ($i = 0; $i < 5; $i++) {
					$res .= $chars[mt_rand(0, strlen($chars) - 1)];
				}

				$query = $this->db->query("SELECT * FROM transaksi WHERE kode_transaksi='$res'")->result();
				if (count($query) == 0) {
					break;
				} else {
				}
			}

			$harga_subtotal = 0;
			for ($i = 0; $i < count($_POST['idd']); $i++) {
				$total_harga = $_POST['prc'][$i] * $_POST['qtt'][$i];
				$diskon = $total_harga * ($_POST['diskon'][$i]/100);
				$harga_total = $total_harga-$diskon;

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
				$this->db->insert('transaksi_produk', $dtd);	
				$harga_subtotal += $harga_total + $_POST['biayalain'][$i];
			}

			$dt = $_POST['dt'];
			$dt['kode_transaksi'] = $res;
			$dt['sub_total'] = strval($harga_subtotal + $_POST['dt']['biaya_kirim']);
			$dt['kembalian'] = strval($_POST['dt']['jumlah_bayar'] - $harga_subtotal);
			$dt['resi_pengiriman'] = '';
			$dt['tipe'] = 'Preorder';
			$dt['status_order'] = 'Pesanan Baru';
			$dt['tgl_status_order'] = date('Y-m-d H:i:s');
			$dt['status_pengiriman'] = 'Belum Dikirim';
			$dt['tgl_status_order'] = '';
			$dt['status_pembayaran'] = 'Belum Dibayar';
			$dt['tgl_status_pembayaran'] = '';
			$dt['created_by'] = $idUser;
			$dt['status'] = "ENABLE";
			$dt['created_at'] = date('Y-m-d H:i:s');
			$this->db->insert('transaksi', $dt);

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

		$this->datatables->select('a.id as id, a.kode_transaksi as kode_transaksi, c.nama_customer as id_customer, d.value as id_kurir, a.biaya_kirim as biaya_kirim, a.jumlah_bayar as jumlah_bayar, a.sub_total as sub_total, a.kembalian as kembalian, b.value as id_bank, c.nama_customer as id_dropshipper, a.status_order as status_order, DATE_FORMAT(a.created_at, "%d %b %Y") as created_at, a.status as status');
		$this->datatables->join('customer c',"c.id = a.id_customer", 'left');
		$this->datatables->join('master_kurir d',"d.id = a.id_kurir", 'left');
		$this->datatables->join('master_bank b',"b.id = a.id_bank", 'left');
		$this->datatables->where('a.status', $status);
		$this->datatables->where('a.tipe', 'Preorder');
		$this->datatables->from('transaksi a');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-info" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="inv($1)"><i class="fa fa-print"></i> INVOICE </button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> HAPUS</button></div>', 'id');
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

	public function status($id, $status)
	{
		$this->mymodel->updateData('transaksi_preorder', array('status' => $status), array('id' => $id));
		redirect('master/Transaksi_preorder');
	}

	public function inv($id)
	{
		$data['page_name'] = "transaksi_preorder";
		$this->template->load('template/template', 'master/transaksi_preorder/inv', $data);
	}
}

?>