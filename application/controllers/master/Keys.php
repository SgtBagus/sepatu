
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Keys extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$data['page_name'] = "keys";
			$this->template->load('template/template','master/keys/all-keys',$data);
		}

		public function create()
		{
			$data['page_name'] = "keys";
			$this->template->load('template/template','master/keys/add-keys',$data);
		}


		public function validate()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
	$this->form_validation->set_rules('dt[user_id]', '<strong>User Id</strong>', 'required');
$this->form_validation->set_rules('dt[key]', '<strong>Key</strong>', 'required');
$this->form_validation->set_rules('dt[level]', '<strong>Level</strong>', 'required');
$this->form_validation->set_rules('dt[ignore_limits]', '<strong>Ignore Limits</strong>', 'required');
$this->form_validation->set_rules('dt[is_private_key]', '<strong>Is Private Key</strong>', 'required');
$this->form_validation->set_rules('dt[ip_addresses]', '<strong>Ip Addresses</strong>', 'required');
$this->form_validation->set_rules('dt[date_created]', '<strong>Date Created</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$dt = $_POST['dt'];
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['status'] = "ENABLE";
				$str = $this->db->insert('keys', $dt);
				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   
					
			}
		}

		public function json()
		{
			$status = $_GET['status'];
			header('Content-Type: application/json');
	        $this->datatables->select('id,user_id,key,level,ignore_limits,is_private_key,ip_addresses,date_created,status');
	        $this->datatables->where('status',$status);
	        $this->datatables->from('keys');
	        if($status=="ENABLE"){
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}
		public function edit($id)
		{
			$data['keys'] = $this->mymodel->selectDataone('keys',array('id'=>$id));$data['page_name'] = "keys";
			$this->template->load('template/template','master/keys/edit-keys',$data);
		}

		public function update()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
			
			$this->validate();
			

	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$this->mymodel->updateData('keys', $dt , array('id'=>$id));
					$this->alert->alertsuccess('Success Update Data');  }
		}

		public function delete()
		{
				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     
		}

		public function status($id,$status)
		{
			$this->mymodel->updateData('keys',array('status'=>$status),array('id'=>$id));
			redirect('master/Keys');
		}


	}
?>