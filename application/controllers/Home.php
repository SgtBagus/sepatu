<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
        
		$data['page_name'] = "home";
		$this->template->load('template/template','template/index',$data);
	}

    function chart($value='')
    {
        $data['page_name'] = "chart";
        
        // $this->load->view('chartscanvasjs/data');
        // $this->load->view('chartscanvasjs/index');
        // $this->load->view('chartscanvasjs/js');
        $this->template->load('template/template','chartscanvasjs/index',$data);
    }



    function get_autocomplete(){
        if (isset($_GET['term'])) {
        	$this->db->like('name',$_GET['term'],'both');
            $result = $this->mymodel->selectWhere('user',null);
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = [
                				'id'=>$row['id'],
                				'label'=>$row['name']
                				];
                // print_r($arr_result);
                // die();
                echo json_encode($arr_result);
            }
        }
    }

   

}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */