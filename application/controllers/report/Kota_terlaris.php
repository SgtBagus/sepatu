

<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Kota_terlaris extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_kota_terlaris', 'rKota_terlaris');
  }

  public function index()
  {
    $data['page_name'] = "Report Kota_terlaris";
    $this->template->load('template/template', 'report/kota_terlaris/all', $data);
  }


  function ajaxAll()
  {
    $list = $this->rKota_terlaris->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->provinsi;
      $row[] = $u->COUNT;
      $data[] = $row;
      $i++;
    }



    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rKota_terlaris->count_all(),
      "recordsFiltered" => $this->rKota_terlaris->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rKota_terlaris->get_data();
    $data = array();
    $i = 1;
    foreach ($list as $u) {



      $data[] = array($i, $u->provinsi, $u->COUNT);

      $i++;
    }

    $judul = "Report Kota_terlaris";

    $head = array('No', 'provinsi', 'COUNT');

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