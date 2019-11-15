

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Laporan_onkir extends MY_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_laporan_onkir','rLaporan_onkir');
  }

  public function index()
  {
      $data['page_name'] = "Report Laporan_onkir";
      $this->template->load('template/template','report/laporan_onkir/all',$data);
    
  }
 

  function ajaxAll()
  {
    $list = $this->rLaporan_onkir->get_datatables();
    $data = array();
    $i=1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
  $row[] = $u->nama_customer;
$row[] = $u->value;
$row[] = $u->biaya_kirim;
$row[] = $u->biaya_kirim_real;
$row[] = $u->status_pengiriman;
$row[] = $u->tgl_status_pengiriman;
      $data[] = $row;
    $i++;
    }
    


    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rLaporan_onkir->count_all(),
      "recordsFiltered" => $this->rLaporan_onkir->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel(){
    $list = $this->rLaporan_onkir->get_data();
    $data = array();
    $i=1;
    foreach ($list as $u) {


  
    $data[] = array($i,$u->nama_customer,$u->value,$u->biaya_kirim,$u->biaya_kirim_real,$u->status_pengiriman,$u->tgl_status_pengiriman);
  
    $i++;
    }

    $judul = "Report Laporan_onkir";

    $head = array('No','nama_customer','value','biaya_kirim','biaya_kirim_real','status_pengiriman','tgl_status_pengiriman');

    $json = [
      'judul'=>$judul,
      'head'=>$head,
      'data'=>$data
    ];

    $this->session->set_flashdata('report',$json);
    redirect('fitur/exportreport');


  }
  

}

/* End of file  */
/* Location: ./application/controllers/ */
 ?> 