<?php

$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";

$pri = $this->mymodel->selectWithQuery($query);

$primary = $pri[0]['COLUMN_NAME'];

$c = ucfirst(str_replace(".php", "", $controller));



$string = "

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class ".$c." extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			\$data['page_name'] = \"".$table."\";

			\$this->template->load('template/template','master/".$table."/all-".$table."',\$data);

		}";

if($form_type=="page"){

$string .=	"

		public function create()

		{

			\$data['page_name'] = \"".$table."\";

			\$this->template->load('template/template','master/".$table."/add-".$table."',\$data);

		}";
}else{

$string .=	"

		public function create()

		{

			\$this->load->view('master/".$table."/add-".$table."');

		}";

}


$string .=	"

		public function validate()

		{

			\$this->form_validation->set_error_delimiters('<li>', '</li>');

	";

		foreach ($show as $key => $value) {



$string .=	"\$this->form_validation->set_rules('dt[".$value."]', '<strong>".$this->template->label($value)."</strong>', 'required');\n";



		}



$string .="	}



		public function store()

		{

			\$this->validate();

	    	if (\$this->form_validation->run() == FALSE){

				\$this->alert->alertdanger(validation_errors());     

	        }else{

	        	\$dt = \$_POST['dt'];

				\$dt['created_at'] = date('Y-m-d H:i:s');

				\$dt['status'] = \"ENABLE\";

				\$str = \$this->db->insert('".$table."', \$dt);

				\$last_id = \$this->db->insert_id();";

if($file==true){	

$string .="	    if (!empty(\$_FILES['file']['name'])){

		        	\$dir  = \"webfile/\";

					\$config['upload_path']          = \$dir;

					\$config['allowed_types']        = '*';

					\$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);



					\$this->load->library('upload', \$config);

					if ( ! \$this->upload->do_upload('file')){

						\$error = \$this->upload->display_errors();

						\$this->alert->alertdanger(\$error);		

					}else{

					   	\$file = \$this->upload->data();

						\$data = array(

					   				'id' => '',

					   				'name'=> \$file['file_name'],

					   				'mime'=> \$file['file_type'],

					   				'dir'=> \$dir.\$file['file_name'],

					   				'table'=> '".$table."',

					   				'table_id'=> \$last_id,

					   				'status'=>'ENABLE',

					   				'created_at'=>date('Y-m-d H:i:s')

					   	 		);

					   	\$str = \$this->db->insert('file', \$data);

						\$this->alert->alertsuccess('Success Send Data');    

					} 

				}else{

					\$data = array(

				   				'id' => '',

				   				'name'=> '',

				   				'mime'=> '',

				   				'dir'=> '',

				   				'table'=> '".$table."',

				   				'table_id'=> \$last_id,

				   				'status'=>'ENABLE',

				   				'created_at'=>date('Y-m-d H:i:s')

				   	 		);



				   	\$str = \$this->db->insert('file', \$data);

					\$this->alert->alertsuccess('Success Send Data');



					}

					 ";



}else{

$string	.= "\$this->alert->alertsuccess('Success Send Data');";



}

$string .=	"   

					

			}

		}



		public function json()

		{

			\$status = \$_GET['status'];

			if(\$status==''){

				\$status = 'ENABLE';

			}

			header('Content-Type: application/json');

	        ";





	        $select = "";

	        foreach ($show as $key => $value) {

	        	$select.= $value.",";

	        }

	        

 $string .= "\$this->datatables->select('".$primary.",".$select."status');";





 $string .= "

	        \$this->datatables->where('status',\$status);

	        \$this->datatables->from('".$table."');

	        if(\$status==\"ENABLE\"){

	        \$this->datatables->add_column('view', '<div class=\"btn-group\"><button type=\"button\" class=\"btn btn-sm btn-primary\" onclick=\"edit(\$1)\"><i class=\"fa fa-pencil\"></i> Edit</button></div>', '".$primary."');



	    	}else{

	        \$this->datatables->add_column('view', '<div class=\"btn-group\"><button type=\"button\" class=\"btn btn-sm btn-primary\" onclick=\"edit(\$1)\"><i class=\"fa fa-pencil\"></i> Edit</button><button type=\"button\" onclick=\"hapus(\$1)\" class=\"btn btn-sm btn-danger\"><i class=\"fa fa-trash-o\"></i> Hapus</button></div>', '".$primary."');



	    	}

	        echo \$this->datatables->generate();

		}";

if($form_type=="page"){

$string .=	"

		public function edit(\$id)

		{

			\$data['".$table."'] = \$this->mymodel->selectDataone('".$table."',array('".$primary."'=>\$id));";

if($file==true){	

$string.=	"\$data['file'] = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));";

}

$string.="\$data['page_name'] = \"".$table."\";

			\$this->template->load('template/template','master/".$table."/edit-".$table."',\$data);

		}";
}else{
$string .=	"

		public function edit(\$id)

		{

			\$data['".$table."'] = \$this->mymodel->selectDataone('".$table."',array('".$primary."'=>\$id));";

if($file==true){	

$string.=	"\$data['file'] = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));";

}

$string.="\$data['page_name'] = \"".$table."\";

			\$this->load->view('master/".$table."/edit-".$table."',\$data);

		}";
}




$string .=	"





		public function update()

		{

			\$this->form_validation->set_error_delimiters('<li>', '</li>');

			

			\$this->validate();

			



	    	if (\$this->form_validation->run() == FALSE){

				\$this->alert->alertdanger(validation_errors());     

	        }else{

				\$id = \$this->input->post('".$primary."', TRUE);";

if($file==true){	

$string.=		"

	        	if (!empty(\$_FILES['file']['name'])){

	        		\$dir  = \"webfile/\";

					\$config['upload_path']          = \$dir;

					\$config['allowed_types']        = '*';

					\$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);

	        		\$this->load->library('upload', \$config);

				if ( ! \$this->upload->do_upload('file')){

						\$error = \$this->upload->display_errors();

						\$this->alert->alertdanger(\$error);		

					}else{

						\$file = \$this->upload->data();

						\$data = array(

					   				'name'=> \$file['file_name'],

					   				'mime'=> \$file['file_type'],

					   				// 'size'=> \$file['file_size'],

					   				'dir'=> \$dir.\$file['file_name'],

					   				'table'=> '".$table."',

					   				'table_id'=> \$id,

					   				'updated_at'=>date('Y-m-d H:i:s')

					   	 		);

						\$file = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));

						@unlink(\$file['dir']);

						if(\$file==\"\"){

							\$this->mymodel->insertData('file', \$data);

						}else{

							\$this->mymodel->updateData('file', \$data , array('id'=>\$file['id']));

						}

						



						\$dt = \$_POST['dt'];

						\$dt['updated_at'] = date(\"Y-m-d H:i:s\");

						\$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));



						\$this->alert->alertsuccess('Success Update Data');  

					}

				}else{

					\$dt = \$_POST['dt'];

					\$dt['updated_at'] = date(\"Y-m-d H:i:s\");

					\$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));

					\$this->alert->alertsuccess('Success Update Data');  

				}";



}else{

	$string.= "		\$dt = \$_POST['dt'];

					\$dt['updated_at'] = date(\"Y-m-d H:i:s\");

					\$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));

					\$this->alert->alertsuccess('Success Update Data');  ";

}





$string.=	"}

		}



		public function delete()

		{

				\$id = \$this->input->post('".$primary."', TRUE);";

if($file==true){	



$string.=	"\$file = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));

				@unlink(\$file['dir']);

				\$this->mymodel->deleteData('file',  array('table_id'=>\$id,'table'=>'".$table."'));



				\$this->mymodel->deleteData('".$table."',  array('".$primary."'=>\$id));";

}

$string.=	"\$this->alert->alertdanger('Success Delete Data');     

		}



		public function status(\$id,\$status)

		{

			\$this->mymodel->updateData('".$table."',array('status'=>\$status),array('".$primary."'=>\$id));

			redirect('master/".$c."');

		}





	}

?>";

		$this->template->createFile($string, $path);

?>