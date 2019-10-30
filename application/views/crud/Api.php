<?php
$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";
$pri = $this->mymodel->selectWithQuery($query);

$primary = $pri[0]['COLUMN_NAME'];
$c = ucfirst(str_replace(".php", "", $controller));


$querys = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY != 'PRI'  AND COLUMN_NAME NOT IN ('status','created_at','updated_at')";
$colom = $this->mymodel->selectWithQuery($querys);
$string = "
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
class ".$c." extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        \$this->methods['index_get']['limit'] = 500; // 500 requests per hour per service/key
        \$this->methods['detail_get']['limit'] = 500; // 50 requests per hour per service/key
        \$this->methods['index_post']['limit'] = 100; // 100 requests per hour per service/key
        \$this->methods['index_put']['limit'] = 100; // 100 requests per hour per service/key
        \$this->methods['index_delete']['limit'] = 50; // 50 requests per hour per service/key
        \$this->methods['index_enable_put']['limit'] = 50; // 50 requests per hour per service/key
        \$this->methods['index_disable_put']['limit'] = 50; // 50 requests per hour per service/key
    }

    public function index_get(\$status='')
    {
        // echo \$status;
        if(\$status=='disable'){
            \$this->db->where(['status'=>'DISABLE']);
        }else{
            \$this->db->where(['status'=>'ENABLE']);
        }

        // ".$table." from a data store e.g. database
        \$".$table." = \$this->mymodel->selectData('".$table."');

        // If the id parameter doesn't exist return all the ".$table."
            // Check if the ".$table." data store contains ".$table." (in case the database result returns NULL)
            if (\$".$table.")
            {
                // Set the response and exit
                \$this->response([
                    'status' => TRUE,
                    'message' => '".$table." were found',
                    'data' => \$".$table."
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                \$this->response([
                    'status' => FALSE,
                    'message' => 'No ".$table." were found',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

    public function detail_get(\$".$primary.")
    {
        // ".$table." from a data store e.g. database
        \$".$table." = \$this->mymodel->selectDataone('".$table."',['".$primary."'=>\$".$primary."]);

        // If the id parameter doesn't exist return all the ".$table."
            // Check if the ".$table." data store contains ".$table." (in case the database result returns NULL)
            if (\$".$table.")
            {
                // Set the response and exit
                 \$this->response([
                    'status' => TRUE,
                    'message' => '".$table." were found',
                    'data' => \$".$table."
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                \$this->response([
                    'status' => FALSE,
                    'message' => 'No ".$table." were found',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

    public function index_post()
    {
        // \$this->some_model->update_service( ... );
        \$data = [
    ";
        foreach ($colom as $col) {
          $string .= "'".$col['COLUMN_NAME']."' => \$this->post('".$col['COLUMN_NAME']."'),\n";
       }

$string.="
      'status' => 'ENABLE',
            'created_at' => date('Y-m-d H:i:s'),
        ];
    \$error = [];
        foreach (\$data as \$key => \$value) 
        {
            \$value = trim(\$value);
            \$key = str_replace(\"_\", \" \", \$key);
            if (empty(\$value)) \$error[] = \"\$key is required\";
        }


        if(count(\$error)!=0)
        {
            \$this->response([
                                'status' => FALSE,
                                'message' => \$error,
                                'data' => \$data
                            ], REST_Controller::HTTP_OK);
        }else{
            \$insert = \$this->mymodel->insertData('".$table."',\$data);
            if (\$insert)
                {
                    // Set the response and exit
                     \$this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success insert data',
                        'data' => \$data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    \$this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function index_put()
    {
        // \$this->some_model->update_service( ... );
        \$data = [
            '".$primary."' => \$this->put('".$primary."'),
    ";
        foreach ($colom as $col) {
          $string .= "'".$col['COLUMN_NAME']."' => \$this->put('".$col['COLUMN_NAME']."'),\n";
       }

$string.="
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        \$error = [];
        foreach (\$data as \$key => \$value) 
        {
            \$value = trim(\$value);
            \$key = str_replace(\"_\", \" \", \$key);
            if (empty(\$value)) \$error[] = \"\$key is required\";
        }


        if(count(\$error)!=0)
        {
            \$this->response([
                                'status' => FALSE,
                                'message' => \$error,
                                'data' => \$data
                            ], REST_Controller::HTTP_OK);
        }else{
            \$update = \$this->mymodel->updateData('".$table."',\$data,['".$primary."'=>\$data['".$primary."']]);
            if (\$update)
                {
                    // Set the response and exit
                     \$this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => \$data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    \$this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function enable_put()
    {
        // \$this->some_model->update_service( ... );
        \$data = [
            '".$primary."' => \$this->put('".$primary."'),
            'status' => 'ENABLE',
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        \$error = [];
        foreach (\$data as \$key => \$value) 
        {
            \$value = trim(\$value);
            \$key = str_replace(\"_\", \" \", \$key);
            if (empty(\$value)) \$error[] = \"\$key is required\";
        }


        if(count(\$error)!=0)
        {
            \$this->response([
                                'status' => FALSE,
                                'message' => \$error,
                                'data' => \$data
                            ], REST_Controller::HTTP_OK);
        }else{
            \$update = \$this->mymodel->updateData('".$table."',\$data,['".$primary."'=>\$data['".$primary."']]);
            if (\$update)
                {
                    // Set the response and exit
                     \$this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => \$data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    \$this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function disable_put()
    {
        // \$this->some_model->update_service( ... );
        \$data = [
            '".$primary."' => \$this->put('".$primary."'),
            'status' => 'DISABLE',
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        \$error = [];
        foreach (\$data as \$key => \$value) 
        {
            \$value = trim(\$value);
            \$key = str_replace(\"_\", \" \", \$key);
            if (empty(\$value)) \$error[] = \"\$key is required\";
        }


        if(count(\$error)!=0)
        {
            \$this->response([
                                'status' => FALSE,
                                'message' => \$error,
                                'data' => \$data
                            ], REST_Controller::HTTP_OK);
        }else{
            \$update = \$this->mymodel->updateData('".$table."',\$data,['".$primary."'=>\$data['".$primary."']]);
            if (\$update)
                {
                    // Set the response and exit
                     \$this->response([
                        'status' => TRUE,
                        'message' => 'congratulation , you success update data',
                        'data' => \$data
                    ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
                }
                else
                {
                    // Set the response and exit
                    \$this->response([
                        'status' => FALSE,
                        'message' => 'Whoops , something trouble with system. please try again !',
                        'data' => []
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                }
        }
    }

    public function index_delete()
    {
        \$".$primary." = (int) \$this->delete('".$primary."');

        // Validate the id.
        if (\$".$primary." <= 0)
        {
            // Set the response and exit
            \$this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        
        \$data = \$this->mymodel->selectDataone('".$table."',['".$primary."'=>\$".$primary."]);
        if(count(\$data)==0){
            \$this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        \$delete = \$this->mymodel->deleteData('".$table."',['".$primary."'=>\$".$primary."]);
        if (\$delete)
            {
                // Set the response and exit
                 \$this->response([
                    'status' => TRUE,
                    'message' => 'congratulation , you success delete data',
                    'data' => \$data
                ], REST_Controller::HTTP_OK);// OK (200) being the HTTP response code
            }
            else
            {
                // Set the response and exit
                \$this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }

    }

}

?>
";

        $this->template->createFile($string, $path);
