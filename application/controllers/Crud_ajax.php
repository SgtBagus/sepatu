<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud_ajax extends My_Controller {

	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		$data['page_name'] = "Crud_ajax";
		$this->template->load('template/template','crud_ajax/index',$data);
	}

	public function ajaxGetTableCustomer($status='ENABLE')
	{
		$customer = $this->mymodel->selectWhere('customer',array('status'=>$status));
		$result = '';
		foreach ($customer as $key => $value) {
			$result .= '<tr id="tr-'.($key+1).'">';
			$result .= '<td>'.($key+1).'</td>';
			$result .= '<td>'.$value['nama'].'</td>';
			$result .= '<td>'.$value['email'].'</td>';
			$result .= '<td>'.$value['telp'].'</td>';
			$result .= '<td>'.$value['alamat'].'</td>';
			$result .= '<td>
						<button type="button" onclick="edit('.$value['id'].')" class="btn btn-xs btn-info"><i class="fa fa-edit"></i> Edit</button> 
						<button type="button" onclick="hapus('.$value['id'].')" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Hapus</button>
						</td>';
			$result .= '</tr>';
		}
		if (count($customer)==0) {
			$result = '<tr><td colspan="6">Data kosong</td></tr>';
		}
		echo $result;
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[nama]', '<strong>Nama</strong>', 'required');
		$this->form_validation->set_rules('dt[email]', '<strong>Email</strong>', 'required');
		$this->form_validation->set_rules('dt[telp]', '<strong>Telp</strong>', 'required');
		$this->form_validation->set_rules('dt[alamat]', '<strong>Alamat</strong>', 'required');
	}

	public function tambah()
	{
		$this->validate();
    	if ($this->form_validation->run() == FALSE){
			$this->alert->alertdanger(validation_errors());     
        }else{
        	$dt = $_POST['dt'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['status'] = "ENABLE";
			$str = $this->db->insert('customer', $dt);
			$last_id = $this->db->insert_id();	    if (!empty($_FILES['file']['name'])){
	        	$dir  = "webfile/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = '*';
				$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);

				$this->load->library('upload', $config);
				if ( ! $this->upload->do_upload('file')){
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);		
				}else{
				   	$file = $this->upload->data();
					$data = array(
				   				'id' => '',
				   				'name'=> $file['file_name'],
				   				'mime'=> $file['file_type'],
				   				'dir'=> $dir.$file['file_name'],
				   				'table'=> 'customer',
				   				'table_id'=> $last_id,
				   				'status'=>'ENABLE',
				   				'created_at'=>date('Y-m-d H:i:s')
				   	 		);
				   	$str = $this->db->insert('file', $data);
					$this->alert->alertsuccess('Success Send Data');    
				} 
			}else{
				$data = array(
			   				'id' => '',
			   				'name'=> '',
			   				'mime'=> '',
			   				'dir'=> '',
			   				'table'=> 'customer',
			   				'table_id'=> $last_id,
			   				'status'=>'ENABLE',
			   				'created_at'=>date('Y-m-d H:i:s')
			   	 		);

			   	$str = $this->db->insert('file', $data);
				$this->alert->alertsuccess('Success Send Data');

				}
				    
				
		}
	}

	public function hapus($id)
	{
		$this->mymodel->deleteData('customer',array('id'=>$id));
	}

	public function ajaxGetModalCustomer($id)
	{
		$data['customer'] = $this->mymodel->selectDataone('customer',array('id'=>$id));
		$data['file'] = $this->mymodel->selectDataone('file',array('table'=>'customer','table_id'=>$id));
		$this->load->view('crud_ajax/edit-modal', $data);
	}

	public function edit($id)
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
			
		$this->validate();
    	if ($this->form_validation->run() == FALSE){
			$this->alert->alertdanger(validation_errors());     
        }else{
        	if (!empty($_FILES['file']['name'])){
        		$dir  = "webfile/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = '*';
				$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);
        		$this->load->library('upload', $config);
			if ( ! $this->upload->do_upload('file')){
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);		
				}else{
					$file = $this->upload->data();
					$data = array(
				   				'name'=> $file['file_name'],
				   				'mime'=> $file['file_type'],
				   				// 'size'=> $file['file_size'],
				   				'dir'=> $dir.$file['file_name'],
				   				'table'=> 'customer',
				   				'table_id'=> $id,
				   				'updated_at'=>date('Y-m-d H:i:s')
				   	 		);
					$file = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'customer'));
					@unlink($file['dir']);
					if($file==""){
						$this->mymodel->insertData('file', $data);
					}else{
						$this->mymodel->updateData('file', $data , array('id'=>$file['id']));
					}
					

					$dt = $_POST['dt'];
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$this->mymodel->updateData('customer', $dt , array('id'=>$id));

					$this->alert->alertsuccess('Success Update Data');  
				}
			}else{
				$dt = $_POST['dt'];
				$dt['updated_at'] = date("Y-m-d H:i:s");
				$this->mymodel->updateData('customer', $dt , array('id'=>$id));
				$this->alert->alertsuccess('Success Update Data');  
			}}
	}

}

/* End of file Tinymce.php */
/* Location: ./application/controllers/Tinymce.php */