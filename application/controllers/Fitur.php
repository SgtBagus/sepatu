<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Fitur extends MY_Controller {



	public function __construct()

	{

		parent::__construct();

	}





	public function ekspor($table)

	{

		$excel = new PHPExcel();

		$excel->getProperties()

		->setCreator('Smartsoft Studio')

		->setLastModifiedBy('Smartsoft Studio')

		->setTitle("Master ".$table)

		->setSubject("".$table)

		->setDescription("Master ".$table)

		->setKeywords("Master ".$table);

		$style_col = array(

			'font' => array('bold' => true), 

			'alignment' => array(

				'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER, 

				'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER 

			),

			'borders' => array(

				'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),  

				'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) 

			),

				'fill' => array(

            	'type' => PHPExcel_Style_Fill::FILL_SOLID,

            	'color' => array('rgb' => 'DDDDDD')

        	),



		);

		$style_row = array(

			'alignment' => array(

				'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER 

			),

			'borders' => array(

				'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),  

				'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) 

			)

		);

		$style_row2 = array(

			'alignment' => array(

				'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER, 

				'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER 

			),

			'borders' => array(

				'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),  

				'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 

				'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) 

			)

		);

		$structure_query = "SELECT COLUMN_NAME,COLUMN_KEY,DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."'";

        $structure = $this->mymodel->selectWithQuery($structure_query);

        $urut = 0;

        foreach ($structure as $stt) {

        	$abjad = $this->template->getNameFromNumber($urut);

			$excel->setActiveSheetIndex(0)->setCellValue($abjad.'1', $stt['COLUMN_NAME']); 

		$urut++;

		}

	 	$urut = 0;

        foreach ($structure as $stt) {

        	$abjad = $this->template->getNameFromNumber($urut);

			$excel->getActiveSheet()->getStyle($abjad.'1')->applyFromArray($style_col);

    	$urut++;

		}

			$rec = $this->mymodel->selectData($table);

			$no = 1; 

			$numrow = 2; 

			foreach($rec as $dt){

				$urut = 0;

		        foreach ($structure as $stt) {

		        	$abjad = $this->template->getNameFromNumber($urut);

					$excel->setActiveSheetIndex(0)->setCellValueExplicit($abjad.$numrow,  $dt[$stt['COLUMN_NAME']],PHPExcel_Cell_DataType::TYPE_STRING);

		    	$urut++;

				}

				$urut = 0;

		        foreach ($structure as $stt) {

		        	$abjad = $this->template->getNameFromNumber($urut);

					$excel->getActiveSheet()->getStyle($abjad.$numrow)->applyFromArray($style_row);

		        	$urut++;

				}

				$no++; 

				$numrow++; 

			}

			$urut = 0;

	        foreach ($structure as $stt) {

        	$abjad = $this->template->getNameFromNumber($urut);

			$excel->getActiveSheet()->getColumnDimension($abjad)->setAutoSize(TRUE); 

        	$urut++;

        	}

			$excel->getActiveSheet()->getDefaultRowDimension()->setRowHeight(-1);

			$excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);

			$excel->getActiveSheet(0)->setTitle("Master ".$table);

			$excel->setActiveSheetIndex(0);

			header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

			header('Content-Disposition: attachment; filename="'.$table.'.xlsx"');

			header('Cache-Control: max-age=0');

			$write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');

			$write->save('php://output');

		

	}





	public function impor($table)

	{

		# code...

       	ini_set('max_execution_time', 30000);

		$config['upload_path']          = 'webfile/';

		$config['allowed_types'] = 'xlsx|csv|xls';

		$config['file_name']            = md5($table).'.xlsx';

		$config['overwrite']            =  TRUE;



		$this->load->library('upload', $config);



		if ( ! $this->upload->do_upload('file'))

		{

			$error = array('error' => $this->upload->display_errors());

			print_r($error);

		}

		else

		{

			$data = array('file' => $this->upload->data());

			$this->importdata($table);

		}

	}



	public function importdata($table)

	{

		# code...



       $this->load->library('excel');

		try 

		{

			$objPHPExcel = PHPExcel_IOFactory::load('webfile/'.md5($table).'.xlsx');

		}

		catch(Exception $e)

		{

			$this->resp->success = FALSE;

			$this->resp->msg = 'Error Uploading file';

			echo json_encode($this->resp);

			exit;

		}

		$allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);

        $query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";

        $pri = $this->mymodel->selectWithQuery($query);

        $primary = $pri[0]['COLUMN_NAME'];

        $header = $allDataInSheet[1];

			$i=1;

			$record=0;

			foreach($allDataInSheet as $aa=>$import){

                if($i>1){

                	$j = 0; 

					foreach ($import as $key => $value) {

		        	$abjad = $this->template->getNameFromNumber($j);

		        		$kolom = $header[$abjad]; 

		        		if($kolom==$primary){

		        			$update[$record][$kolom] = $value;  

		        		}else{

		        			$update[$record]['data'][$kolom] = $value;  

		        		}

	       			$j++;

	       			}  

	       			$record++;         			

                }

           	$i++;

            }



            foreach ($update as $k => $to_table) {

            	$cekdata = $this->mymodel->selectDataone($table,array($primary=>$to_table[$primary]));

            	if(count($cekdata)==0){

            		$this->mymodel->insertData($table,$to_table['data']);

            	}else{

            		$this->mymodel->updateData($table,$to_table['data'],array($primary=>$to_table[$primary]));



            	}

            }



            redirect ('master/'.$table);

	}



	public function access()

	{

		# code...

		$this->db->truncate('access_control');

		// print_r($ci);

		$file = $this->get_uri();

		foreach ($file['file'] as $controller) {

			$con[] = $controller;

			$fol[] = '';



		}



		foreach ($file['folder'] as $folder) {

			$files = $this->get_uri('/'.$folder);

			foreach ($files['file'] as $controller) {

				$con[] = $controller;

				$fol[] = $folder.'/';



			}

			

		}



		$i=0;

		foreach ($con as $ctrl) {

			if($fol[$i]!="api/"){



	    		include_once APPPATH . 'controllers/' . $fol[$i] .$ctrl;

	    		$methods = get_class_methods( str_replace( '.php', '', $ctrl ) );

	    		



	    		foreach ($methods as $mt) {

	    			$data = array(

	    						'folder'=>str_replace("/","",$fol[$i]),

	    						'class'=>str_replace( '.php', '', $ctrl ),

	    						'method'=>$mt,

	    						'val'=>strtolower($fol[$i].str_replace( '.php', '', $ctrl )."/".$mt),

	    					);

	    			$cek = $this->mymodel->selectDataone('access_control',$data);

	    			if(count($cek)==0){

						$this->db->insert('access_control', $data);

	    			}else{

	    				$this->mymodel->updateData('access_control',$data,array('id'=>$cek['id']));

	    			}



	    		}

	    	}





		$i++;

		}

		



		$json = $this->mymodel->selectData('access_control');

		echo json_encode($json);



	}


	function exportreport()
	{
		$data = $this->session->flashdata('report');
		// print_r($data);
		$this->excel->to_file($data['judul'],$data['head'],$data['data']);

	}

	public function toPdf()
	{
		$this->load->library('pdf');
		$dir ='./webfile/documents/';
		$filename = "Berita Resmi";

		$this->pdf->folder($dir); //Set folder to save PDF to
		$this->pdf->filename($filename.'.pdf');
		$this->pdf->paper('A4', 'portrait');
		$data = $this->load->view('report/bmn-doc/tes.php', @$this->data, true); //view
		$this->pdf->html($data);

		// $this->pdf->create('save'); //Save to path

		$this->pdf->create(); //To open with browser or save to pc
	}


}



/* End of file Fitur.php */

/* Location: ./application/controllers/Fitur.php */