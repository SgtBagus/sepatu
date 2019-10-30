<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Site extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
	}
	// =========================================================DATATABLES=========================================================== //

	public function index($status = "")
	{
		if($status=="enable" OR $status ==""){
			$data['status'] = "ENABLE";
		}else{
			$data['status'] = "DISABLE";
		}
		$data['page_name']="master";
		$this->template->load('template/template','master/site/site-datatables', $data);
	}

	public function site_json($cek_status)
	{
		# code...
		# code...
		if($cek_status=="DISABLE"){
			$class_status ="success";
			$text_status ="Enable";
			$button_action = '<center><div class="btn-group"> <a onclick="hapus($1)"  class="btn btn-xs btn-'.$class_status.'"><span class="txt-white fa fa-arrow-right"></span> '.$text_status.'</a>  </div></center>';
		}else{
			$class_status = "danger";
			$text_status ="Disable";
			$button_action = '<center><div class="btn-group"> <a onclick="site_update($1)" class="btn btn-xs btn-info"><span class="txt-white fa fa-edit"></span> Edit</a> <a onclick="hapus($1)"  class="btn btn-xs btn-'.$class_status.'"><span class="txt-white fa fa-arrow-right"></span> '.$text_status.'</a>  </div></center>';
		}
		header('Content-Type: application/json');
        $this->datatables->select('site.id as id,site.code,site.site,site.name,site.status,file.dir');
        $this->datatables->join('file','site.id=file.table_id','left');
        $this->datatables->where(array('file.table'=>'site','site.status'=>$cek_status));
        // $this->datatables->order_by('site.id DESC');
        $this->datatables->from('site');
        $this->datatables->add_column('view', $button_action, 'id');
        echo $this->datatables->generate();
	}
	// =========================================================DATATABLES=========================================================== //

	// =========================================================DEFAULT=========================================================== //
	public function site_default($status='')
	{
		# code...
		if($status=="enable" OR $status ==""){
			$data['status'] = "ENABLE";
		}else{
			$data['status'] = "DISABLE";
		}
		$data['page_name']="master";
		$this->template->load('template/template','master/site/site-default', $data);
		
	}
	// =========================================================DEFAULT=========================================================== //

	// =========================================================CUSTOM=========================================================== //
	public function site_custom($status='')
	{
		# code...
		# code...
		if($status=="enable" OR $status ==""){
			$data['status'] = "ENABLE";
		}else{
			$data['status'] = "DISABLE";
		}
		$data['page_name']="master";
		$this->template->load('template/template','master/site/site-customtables', $data);
	}

	public function site_data($page=0)
	{
		# code...
		$query_string = $_GET['str'];
		$status =@$_GET['stt'];

	
		$data['status'] = $status;
	
		$this->load->library('pagination');
        $config = $this->template->pagination($page);
        $config['base_url']     = site_url("master/site/site_data");
        $config['per_page']     = 10; 
        $config["uri_segment"]  = 4;
        $config["suffix"]       = "?str=".$query_string."&status=".$status;
        $config['reuse_query_string'] = TRUE;
        // $config["use_page_numbers"] = TRUE;
        $config['total_rows']   = $this->db->order_by('id DESC')->where(array('status' => $data['status']))->where("site like '%".$query_string."%'")->get('site')->num_rows();
        $config["num_links"]    = round($config["total_rows"] / $config["per_page"]);
        $this->pagination->initialize($config); 
        $this->db->limit($config['per_page'], $page);
		$this->db->order_by('id'.' DESC');
		$a = $this->db->order_by('id DESC')->where(array('status' => $data['status']))->where("site like '%".$query_string."%'")->get('site');
        $data["data"]   =   $a->result_array();
		$this->load->view('master/site/site-customtables-data', $data);
	}
	// =========================================================CUSTOM=========================================================== //


	public function site_store()
	{
		# code...
		$post_data = $this->input->post('dt');
		$post_data['created_at'] = date("Y-m-d H:i:s");
		$post_data['status'] = "ENABLE";
    	if (!empty($_FILES['gambar']['name'])){
				$dir  = "webfile/site/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = 'gif|jpg|png';
				$config['file_name']           = rand(1,1000);
				$this->load->library('upload', $config);
				if ( ! $this->upload->do_upload('gambar')){
					$error = $this->upload->display_errors();
					echo "<script>alert('".$error."');history.go(-1)</script>";

				}else{
				   	$str = $this->db->insert('site', $post_data);
				   	$last_id = $this->db->insert_id();
				   	$image = $this->upload->data();
				   	$data = array(
				   				'name'=> $image['file_name'],
				   				'mime'=> $image['file_type'],
				   				'dir'=> $dir.$image['file_name'],
				   				'table'=> 'site',
				   				'table_id'=> $last_id,
				   				'status'=> 0,
				   				'created_at'=> date("Y-m-d H:i:s")
				   	 		);
				   	$str = $this->db->insert('file', $data);
	        		if($str){
	        			$this->session->set_flashdata('message', 'Success Send Data');
						$this->session->set_flashdata('class', 'success');
						header("Location: ".base_url()."master/site"); 
	        		}else{
						echo "<script>alert('Something Error , Try Again');history.go(-1)</script>";
					}
				}	
		}else{
					$str = $this->db->insert('site', $post_data);
				   	$last_id = $this->db->insert_id();
				   	$data = array(
				   				'table'=> 'site',
				   				'table_id'=> $last_id,
				   				'status'=> 0,
				   				'created_at'=> date("Y-m-d H:i:s")
				   	 		);
				   	$str = $this->db->insert('file', $data);
					header("Location: ".base_url()."master/site"); 

		}



	}

	public function site_edit($id)
	{
		# code...
		$data['data'] = $this->mymodel->selectdataOne('site',array('id'=>$id));
		$data['image'] = $this->mymodel->selectdataOne('file',array('table_id'=>$id,'table'=>'site')); 
		$this->load->view('master/site/site-edit',$data);
	}

	public function site_update()
	{
		# code...
		$id = $this->input->post('ids');
		$post_data = $this->input->post('dt');
		$post_data['updated_at'] = date("Y-m-d H:i:s");
    	if (!empty($_FILES['gambar']['name'])){
			$dir  = "webfile/site/";
			$config['upload_path']          = $dir;
			$config['allowed_types']        = 'gif|jpg|png';
			$config['file_name']           = rand(1,1000);   	
			$this->load->library('upload', $config);
			if ( ! $this->upload->do_upload('gambar')){
				$error = $this->upload->display_errors();
				echo "<script>alert('".$error."');history.go(-1)</script>";
			}else{	
				$img = $this->mymodel->selectDataone('file',array('table' => 'site' , 'table_id' => $id ));
				$path = $img['dir'];
				@unlink($path);
			   	$image = $this->upload->data();
			   	$data = array(
	   				'name'=> $image['file_name'],
	   				'mime'=> $image['file_type'],
	   				'dir'=> $dir.$image['file_name'],
	   				'updated_at'=> date("Y-m-d H:i:s")
	   	 		);
			   	$string = $this->mymodel->updateData('file', $data, array('table' => 'site' , 'table_id' => $id ));
				$string = $this->mymodel->updateData('site', $post_data , array('id' => $id));
				if($string){
					header("Location: ".base_url()."master/site"); 
					$this->session->set_flashdata('message', 'Success Send Data');
					$this->session->set_flashdata('class', 'success');
        		}else{
					echo "<script>alert('Something Error , Try Again');history.go(-1)</script>";
				}
			}
    	}else{

				$string = $this->mymodel->updateData('site', $post_data , array('id' => $id));
				if($string){
					$this->session->set_flashdata('message', 'Success Send Data');
					$this->session->set_flashdata('class', 'success');
					header("Location: ".base_url()."master/site");

        		}else{
					echo "<script>alert('Something Error , Try Again');history.go(-1)</script>";
				}
    	}


	}

	public function site_hidden($id,$status="")
	{
		if($id!=1){
			if($status=="ENABLE" OR $status ==""){
				$data['status'] = "ENABLE";
			}else{
				$data['status'] = "DISABLE";
			}
			$str = $this->mymodel->updateData('site', $data , array('id' => $id));
			$this->session->set_flashdata('message', 'Success '.$status.' Data');
			$this->session->set_flashdata('class', 'success');
			header("Location: ".base_url()."master/site"); 
		}else{
					echo "<script>alert('OFFICE JAKARTA cant DISABLE');history.go(-1)</script>";
		}
		
	}
	// ===================================================END MASTER SITE=========================================================== //
	

}

/* End of file Site.php */
/* Location: ./application/controllers/Site.php */