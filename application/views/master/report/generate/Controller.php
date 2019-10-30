<?php

$s = array();
foreach (json_decode($show) as $value) {
    $s[] = "'".$value."'";
}

$header = implode(',', $s);

$string = "

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ".$controller." extends MY_Controller {

  public function __construct()
  {
    parent::__construct();
    \$this->load->model('".$model."','r".$controller."');
  }

  public function index()
  {
      \$data['page_name'] = \"Report ".$controller."\";
      \$this->template->load('template/template','report/".strtolower($controller)."/all',\$data);
    
  }
 

  function ajaxAll()
  {
    \$list = \$this->r".$controller."->get_datatables();
    \$data = array();
    \$i=1;
    foreach (\$list as \$u) {
      \$row = array();

      \$row[] = \$i;
  ";

  foreach (json_decode($show) as $value) {
  
    $string .= "\$row[] = \$u->".$value.";\n";
  
  }

  $string .= "\$row[] = \"<button type='button' class='btn btn-info btn-flat' onclick='detail()'><i class='fa fa-edit'></i>Detail</button>\";";
      
  $string .= "
      \$data[] = \$row;
    \$i++;
    }
    


    \$output = array(
      \"draw\" => \$_POST['draw'],
      \"recordsTotal\" => \$this->r".$controller."->count_all(),
      \"recordsFiltered\" => \$this->r".$controller."->count_filtered(),
      \"data\" => \$data
    );

    echo json_encode(\$output);
  }


  function getExcel(){
    \$list = \$this->r".$controller."->get_data();
    \$data = array();
    \$i=1;
    foreach (\$list as \$u) {


  ";
  $a =array();
  foreach (json_decode($show) as $value) {
  
    $a[] = "\$u->".$value;
  
  }
$isi = implode(',', $a);
      
  $string .= "
    \$data[] = array(\$i,".$isi.");
  
    \$i++;
    }

    \$judul = \"Report ".$controller."\";

    \$head = array('No',".$header.");

    \$json = [
      'judul'=>\$judul,
      'head'=>\$head,
      'data'=>\$data
    ];

    \$this->session->set_flashdata('report',\$json);
    redirect('fitur/exportreport');


  }
  

}

/* End of file  */
/* Location: ./application/controllers/ */
 ?> ";

// echo $string;
    $this->template->createFile($string, $path);

?>
