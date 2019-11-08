<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
        
		$data['page_name'] = "home";

        $itemTerjualQuery = $this->mymodel->selectWithQuery("SELECT COUNT('id') as COUNT FROM transaksi_produk_ready WHERE status = 'ENABLE' AND updated_at LIKE '".date('Y-m-d')."%'");
        $data['itemTerjual'] = $itemTerjualQuery[0]['COUNT'];

        $totalOmzet = $this->mymodel->selectWithQuery("SELECT SUM(sub_total) as SUM FROM transaksi WHERE status = 'ENABLE' AND status_order = 'Selesai' AND status_pembayaran = 'Lunas' AND updated_at LIKE '".date('Y-m-d')."%'");
        $totalOmzetOngkir = $this->mymodel->selectWithQuery("SELECT SUM(biaya_kirim) as SUM FROM transaksi WHERE status = 'ENABLE' AND status_order = 'Selesai' AND status_pembayaran = 'Lunas' AND updated_at LIKE '".date('Y-m-d')."%'");

        $data['totalOmzet'] = $totalOmzet[0]['SUM'];
        $data['totalOmzetNONonkir'] = $totalOmzet[0]['SUM'] - $totalOmzetOngkir[0]['SUM'];

        $belumLunas = $this->mymodel->selectWithQuery("SELECT COUNT(id) as COUNT FROM transaksi WHERE status = 'ENABLE' AND status_pembayaran NOT LIKE 'Lunas'");

        $data['belumLunas'] = $belumLunas[0]['COUNT'];
 

        $data['produk'] = $this->mymodel->selectWithQuery("SELECT c.kode_transaksi, a.nama_produk as nama_produk, SUM(b.qty) as qty, a.jumlah_stok as jumlah_stok FROM produk_ready a INNER JOIN transaksi_produk_ready b ON a.id = b.id_produk_ready INNER JOIN transaksi c ON b.kode_transaksi = c.kode_transaksi WHERE a.status = 'ENABLE' AND c.status_order = 'Selesai' AND c.tipe = 'Ready Stok' GROUP BY b.id_produk_ready ORDER BY b.qty DESC LIMIT 10");


        $data['kota'] = $this->mymodel->selectWithQuery("SELECT a.id_customer, c.provinsi as provinsi, c.id, COUNT(c.id) as COUNT FROM transaksi a INNER JOIN customer b ON a.id_customer = b.id INNER JOIN tbl_provinsi c ON b.id_provinsi = c.id WHERE a.status = 'ENABLE' AND a.status_order = 'Selesai' GROUP BY a.id_customer LIMIT 10");

		$this->template->load('template/template','template/index',$data);
	}

    function chart($value='')
    {
        $data['page_name'] = "chart";
        $this->template->load('template/template','chartscanvasjs/index',$data);
    }

    function get_autocomplete(){
        if (isset($_GET['term'])) {
        	$this->db->like('name',$_GET['term'],'both');
            $result = $this->mymodel->selectWhere('user',null);
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = [
                				'id'=>$row['id'],
                				'label'=>$row['name']
                				];
                echo json_encode($arr_result);
            }
        }
    }

   

}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */