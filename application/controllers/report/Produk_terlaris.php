

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Produk_terlaris extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_produk_terlaris', 'rProduk_terlaris');
  }

  public function index()
  {
    $data['page_name'] = "Report Produk_terlaris";
    $this->template->load('template/template', 'report/produk_terlaris/all', $data);
  }


  function ajaxAll()
  {
    $list = $this->rProduk_terlaris->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->nama_produk;
      $row[] = $u->warna_produk;
      $row[] = $u->jumlah_stok;
      $row[] = $u->terjual;
      $data[] = $row;
      $i++;
    }



    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rProduk_terlaris->count_all(),
      "recordsFiltered" => $this->rProduk_terlaris->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rProduk_terlaris->get_data();
    $data = array();
    $i = 1;
    foreach ($list as $u) {



      $data[] = array($i, $u->nama_produk, $u->warna_produk, $u->jumlah_stok, $u->terjual);

      $i++;
    }

    $judul = "Report Produk_terlaris";

    $head = array('No', 'nama_produk', 'warna_produk', 'jumlah_stok', 'terjual');

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