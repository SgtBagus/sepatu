
<?php
 use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
//To Solve File REST_Controller not found
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

/**
 * This is an example of a few basic service interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Service extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        $this->methods['index_get']['limit'] = 500; // 500 requests per hour per service/key
        $this->methods['detail_get']['limit'] = 500; // 50 requests per hour per service/key
        $this->methods['index_post']['limit'] = 100; // 100 requests per hour per service/key
        $this->methods['index_put']['limit'] = 100; // 100 requests per hour per service/key
        $this->methods['index_delete']['limit'] = 50; // 50 requests per hour per service/key
        $this->methods['index_enable_put']['limit'] = 50; // 50 requests per hour per service/key
        $this->methods['index_disable_put']['limit'] = 50; // 50 requests per hour per service/key
    }

    public function index_get($status='')
    {
        // echo $status;
        if($status=='disable'){
            $this->db->where(['status'=>'DISABLE']);
        }else{
            $this->db->where(['status'=>'ENABLE']);
        }

        // service from a data store e.g. database
        $service = $this->mymodel->selectData('service');

        // If the id parameter doesn't exist return all the service
            // Check if the service data store contains service (in case the database result returns NULL)
            if ($service)
            {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'message' => 'service were found',
                    'data' => $service
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'No service were found',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

    public function detail_get($srv_id)
    {
        // service from a data store e.g. database
        $service = $this->mymodel->selectDataone('service',['srv_id'=>$srv_id]);

        // If the id parameter doesn't exist return all the service
            // Check if the service data store contains service (in case the database result returns NULL)
            if ($service)
            {
                // Set the response and exit
                 $this->response([
                    'status' => TRUE,
                    'message' => 'service were found',
                    'data' => $service
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'No service were found',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

    public function index_post()
    {
        // $this->some_model->update_service( ... );
        $data = [
    'srv_nama' => $this->post('srv_nama'),
'srv_ketarangan' => $this->post('srv_ketarangan'),

      'status' => 'ENABLE',
            'created_at' => date('Y-m-d H:i:s'),
        ];
    $error = [];
        foreach ($data as $key => $value) 
        {
            $value = trim($value);
            $key = str_replace("_", " ", $key);
            if (empty($value)) $error[] = "$key is required";
        }


        if(count($error)!=0)
        {
            $this->response([
                                'status' => FALSE,
                                'message' => $error,
                                'data' => $data
                            ], REST_Controller::HTTP_OK);
        }else{
            $insert = $this->mymodel->insertData('service',$data);
            if ($insert)
                {
                    // Set the response and exit
                     $this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success insert data',
                        'data' => $data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function index_put()
    {
        // $this->some_model->update_service( ... );
        $data = [
            'srv_id' => $this->put('srv_id'),
    'srv_nama' => $this->put('srv_nama'),
'srv_ketarangan' => $this->put('srv_ketarangan'),

            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $error = [];
        foreach ($data as $key => $value) 
        {
            $value = trim($value);
            $key = str_replace("_", " ", $key);
            if (empty($value)) $error[] = "$key is required";
        }


        if(count($error)!=0)
        {
            $this->response([
                                'status' => FALSE,
                                'message' => $error,
                                'data' => $data
                            ], REST_Controller::HTTP_OK);
        }else{
            $update = $this->mymodel->updateData('service',$data,['srv_id'=>$data['srv_id']]);
            if ($update)
                {
                    // Set the response and exit
                     $this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => $data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function enable_put()
    {
        // $this->some_model->update_service( ... );
        $data = [
            'srv_id' => $this->put('srv_id'),
            'status' => 'ENABLE',
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $error = [];
        foreach ($data as $key => $value) 
        {
            $value = trim($value);
            $key = str_replace("_", " ", $key);
            if (empty($value)) $error[] = "$key is required";
        }


        if(count($error)!=0)
        {
            $this->response([
                                'status' => FALSE,
                                'message' => $error,
                                'data' => $data
                            ], REST_Controller::HTTP_OK);
        }else{
            $update = $this->mymodel->updateData('service',$data,['srv_id'=>$data['srv_id']]);
            if ($update)
                {
                    // Set the response and exit
                     $this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => $data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function disable_put()
    {
        // $this->some_model->update_service( ... );
        $data = [
            'srv_id' => $this->put('srv_id'),
            'status' => 'DISABLE',
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $error = [];
        foreach ($data as $key => $value) 
        {
            $value = trim($value);
            $key = str_replace("_", " ", $key);
            if (empty($value)) $error[] = "$key is required";
        }


        if(count($error)!=0)
        {
            $this->response([
                                'status' => FALSE,
                                'message' => $error,
                                'data' => $data
                            ], REST_Controller::HTTP_OK);
        }else{
            $update = $this->mymodel->updateData('service',$data,['srv_id'=>$data['srv_id']]);
            if ($update)
                {
                    // Set the response and exit
                     $this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => $data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function index_delete()
    {
        $srv_id = (int) $this->delete('srv_id');

        // Validate the id.
        if ($srv_id <= 0)
        {
            // Set the response and exit
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        
        $data = $this->mymodel->selectDataone('service',['srv_id'=>$srv_id]);
        if(count($data)==0){
            $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        $delete = $this->mymodel->deleteData('service',['srv_id'=>$srv_id]);
        if ($delete)
            {
                // Set the response and exit
                 $this->response([
                    'status' => TRUE,
                    'message' => 'congratulation , you success delete data',
                    'data' => $data
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

}

?>
