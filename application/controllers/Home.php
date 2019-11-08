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
        
		$this->template->load('template/template','template/index',$data);
	}

    public function jsonproduk()
    {
        header('Content-Type: application/json');
        $this->datatables->select('a.id as id, c.kode_transaksi, a.nama_produk as nama_produk, SUM(b.qty) as qty, a.jumlah_stok as jumlah_stok');
        $this->datatables->join('transaksi_produk_ready b', "a.id = b.id_produk_ready", 'inner');
        $this->datatables->join('transaksi c', "b.kode_transaksi = c.kode_transaksi", 'inner');
        $this->datatables->from('produk_ready a');
		$this->datatables->where('a.status', 'ENABLE');
		$this->datatables->where('c.status_order', 'Selesai');
        $this->datatables->where('c.tipe', 'Ready Stok');
        $this->datatables->group_by('b.id_produk_ready');
        
        echo $this->datatables->generate();
    }

    public function jsonkota()
    {
        header('Content-Type: application/json');
        $this->datatables->select('a.id_customer, c.provinsi as provinsi, c.id, COUNT(c.id) as COUNT');
        $this->datatables->join('customer b', "a.id_customer = b.id", 'inner');
        $this->datatables->join('tbl_provinsi c', "b.id_provinsi = c.id", 'inner');
        $this->datatables->from('transaksi a');
		$this->datatables->where('a.status', 'ENABLE');
		$this->datatables->where('a.status_order', 'Selesai');
        $this->datatables->group_by('a.id_customer');
        
        echo $this->datatables->generate();
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