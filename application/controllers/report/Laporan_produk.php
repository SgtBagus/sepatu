

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Laporan_produk extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_laporan_produk', 'rLaporan_produk');
  }

  public function index()
  {
    $data['page_name'] = "Report Laporan_produk";
    $this->template->load('template/template', 'report/laporan_produk/all', $data);
  }


  function ajaxAll()
  {
    $list = $this->rLaporan_produk->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->nama_produk;
      $row[] = $u->ket_produk;
      $row[] = $u->harga_produksi;
      $row[] = $u->harga_jual;
      $row[] = $u->created_at;
      $row[] = $u->updated_at;
      $data[] = $row;
      $i++;
    }



    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rLaporan_produk->count_all(),
      "recordsFiltered" => $this->rLaporan_produk->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rLaporan_produk->get_data();
    $data = array();
    $i = 1;
    foreach ($list as $u) {



      $data[] = array($i, $u->nama_produk, $u->ket_produk, $u->harga_produksi, $u->harga_jual, $u->created_at, $u->updated_at);

      $i++;
    }

    $judul = "Report Laporan_produk";

    $head = array('No', 'nama_produk', 'ket_produk', 'harga_produksi', 'harga_jual', 'created_at', 'updated_at');

    $json = [
      'judul' => $judul,
      'head' => $head,
      'data' => $data
    ];

    $this->session->set_flashdata('report', $json);
    redirect('fitur/exportreport');
  }
}

/* End of file  */
/* Location: ./application/controllers/ */
?> 