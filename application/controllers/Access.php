<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Access extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
		$data['page_name'] = "access";
		$this->template->load('template/template','access/all-role',$data);
	}
	public function json()
	{
		$status = $_GET['status'];
		header('Content-Type: application/json');
		$this->datatables->select('id,role,status');
		$this->datatables->where('status',$status);
		$this->datatables->from('role');
		// if($status=="ENABLE"){
		$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Access Control</button></div>', 'id');
			// }else{
		//    $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
			// }
		echo $this->datatables->generate();
			}
			
			public function control($id)
	{
		# code...
		$data['page_name'] = "access";
		$data['role'] = $this->mymodel->selectDataone('role',array('id'=>$id));
		$data['control'] = $this->mymodel->selectData('access_control');
		$this->template->load('template/template','access/all-control',$data);
	}


	public function store()
	{
		# code...
		$role = $this->input->post('role');
		$control = $this->input->post('control');
		$this->mymodel->deleteData('access',array('role_id'=>$role));
		foreach ($control as $key => $value) {
			$data = array(
						'access_control_id'=>$value,
						'role_id' =>$role,
						'status'=>'active'
						);
			$this->db->insert('access', $data);
		}
		redirect('access/control/'.$role);
	}
}
/* End of file Access.php */
/* Location: ./application/controllers/Access.php */