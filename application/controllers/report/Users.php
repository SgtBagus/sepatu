

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends MY_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_users','rUsers');
  }

  public function index()
  {
      $data['page_name'] = "Report Users";
      $this->template->load('template/template','report/users/all',$data);
    
  }
 

  function ajaxAll()
  {
    $list = $this->rUsers->get_datatables();
    $data = array();
    $i=1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
  $row[] = $u->nip;
$row[] = $u->name;
$row[] = $u->email;
$row[] = $u->password;
$row[] = $u->role_id;
$row[] = $u->desc;
$row[] = $u->status;
$row[] = $u->created_at;
$row[] = $u->updated_at;
$row[] = "<button type='button' class='btn btn-info btn-flat' onclick='detail()'><i class='fa fa-edit'></i>Detail</button>";
      $data[] = $row;
    $i++;
    }
    


    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rUsers->count_all(),
      "recordsFiltered" => $this->rUsers->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel(){
    $list = $this->rUsers->get_data();
    $data = array();
    $i=1;
    foreach ($list as $u) {


  
    $data[] = array($i,$u->nip,$u->name,$u->email,$u->password,$u->role_id,$u->desc,$u->status,$u->created_at,$u->updated_at);
  
    $i++;
    }

    $judul = "Report Users";

    $head = array('No','nip','name','email','password','role_id','desc','status','created_at','updated_at');

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