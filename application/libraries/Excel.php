<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');  

 

require_once APPPATH."/libraries/PHPExcel.php";

class Excel extends PHPExcel {

    public function __construct() {

        parent::__construct();

    }





	function getNameFromNumber($num) {

	    $numeric = $num % 26;

	    $letter = chr(65 + $numeric);

	    $num2 = intval($num / 26);

	    if ($num2 > 0) {

	        return $this->getNameFromNumber($num2 - 1) . $letter;

	    } else {

	        return $letter;

	    }

	}





    public function to_file($judul,$header,$isi)

    {

    	# code...	

    	$excel = new PHPExcel();



		

		$excel->getProperties()->

		setCreator('Smartsoft Studio')->

		setLastModifiedBy('Smartsoft Studio')->

		setTitle($judul)->

		setSubject($judul)->

		setDescription($judul)->

		setKeywords($judul);





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

 

 		$i=0;

		foreach ($header as $head) {

		$excel->setActiveSheetIndex(0)->setCellValue($this->getNameFromNumber($i).'1', $head); 

			

		$i++;

		}

 		



 		$i=0;

		foreach ($header as $head) {

			$excel->getActiveSheet()->getStyle($this->getNameFromNumber($i)."1")->applyFromArray($style_col);

		

		$i++;

		}

		



		$no = 1; 

		$numrow = 2; 

		foreach($isi as $dt => $val){

	 	

	 		$i=0;

			foreach ($header as $head) {

				// if($i==0){

				// 	$excel->setActiveSheetIndex(0)->setCellValue('A'.$numrow, $no);

				// }else{

				// $vals[$this->getNameFromNumber($i).$numrow][] = $val[$i];

					// $excel->setActiveSheetIndex(0)->setCellValue($this->getNameFromNumber($i).$numrow,  $val[$i]);
				
				$excel->setActiveSheetIndex(0)->setCellValueExplicit($this->getNameFromNumber($i).$numrow,   $val[$i],PHPExcel_Cell_DataType::TYPE_STRING);

				



				// }

			$i++;

			}

			

			$i=0;

			foreach ($header as $head) {

				

			$excel->getActiveSheet()->getStyle($this->getNameFromNumber($i).$numrow)->applyFromArray($style_row);

			

			$i++;

			}

				

			$no++; 

			$numrow++; 

		}



		

			$i=0;

			foreach ($header as $head) {

				

				$excel->getActiveSheet()->getColumnDimension($this->getNameFromNumber($i))->setAutoSize(TRUE); 



			$i++;

			}







		

		

		$excel->getActiveSheet()->getDefaultRowDimension()->setRowHeight(-1);



		

		$excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);



		

		$excel->getActiveSheet(0)->setTitle($judul);

		$excel->setActiveSheetIndex(0);



		

		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

		header('Content-Disposition: attachment; filename="'.$judul.'.xlsx"');

		header('Cache-Control: max-age=0');



		$write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');

		$write->save('php://output');



		// print_r($vals);

    }

}

