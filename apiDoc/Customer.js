/**
* @api {get} {url}/customer/:status All Customer information
* @apiVersion 1.1.0
* @apiParam {String} status=ENABLE ENABLE OR DISABLE
* @apiName GetCustomer
* @apiGroup Customer
* @apiDescription Menampilkan seluruh data Customer
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data all information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
*		 {
*		    "status": true,
*		    "message": "customer were found",
*		    "data": [
*		        {
*		            "id": "1",
*		            "name": "Misbah Chairi",
*		            "email": "misbahchairi@gmail.com",
*		            "phone": "081210002211",
*		            "address": "Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur",
*		            "status": "ENABLE",
*		            "created_at": "2019-02-13 14:13:38",
*		            "updated_at": null
*		        }
*		    ]
*		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*		{
*    		"status": false,
*    		"message": "No customer were found",
*    		"data": []
*		}
*/


/**
* @api {get} {url}/customer/detail/:id Detail Customer
* @apiVersion 1.1.0
* @apiParam {Int} id Customer-ID
* @apiName GetDetailCustomer
* @apiGroup Customer
* @apiDescription Menampilkan detail data Customer
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
*		{
*		    "status": true,
*		    "message": "customer were found",
*		    "data": {
*		        "id": "1",
*		        "name": "Misbah Chairi",
*		        "email": "misbahchairi@gmail.com",
*		        "phone": "081210002211",
*		        "address": "Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur",
*		        "status": "ENABLE",
*		        "created_at": "2019-02-13 14:13:38",
*		        "updated_at": null
*		    }
*		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*		{
*		    "status": false,
*		    "message": "No customer were found",
*		    "data": []
*		}	
*/



/**
* @api {post} {url}/customer/ Insert Customer
* @apiVersion 1.1.0
* @apiParam {String} name Customer Name
* @apiParam {String} email Customer Email
* @apiParam {String} phone Customer Phone
* @apiParam {String} address Customer Address
* @apiName PostCustomer
* @apiGroup Customer
* @apiDescription Menambah data Customer , type data : form-data
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
*		{
*		    "status": true,
*		    "message": "congratulation , you success insert data",
*		    "data": {
*		        "name": "Bayu Briyan El Roy",
*		        "email": "bayubriyanelroy@gmal.com",
*		        "phone": "081230008101",
*		        "address": "Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur",
*		        "status": "ENABLE",
*		        "created_at": "2019-02-13 07:42:45"
*		    }
*		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*		{
*		    "status": false,
*		    "message": [
*		        "name is required",
*		        "email is required",
*		        "phone is required",
*		        "address is required"
*		    ],
*		    "data": {
*		        "name": "",
*		        "email": "",
*		        "phone": "",
*		        "address": "",
*		        "status": "ENABLE",
*		        "created_at": "2019-02-13 07:43:39"
*		    }
*		}
*/






/**
* @api {put} {url}/customer/ Update Customer
* @apiVersion 1.1.0
* @apiParam {Int} id Customer ID
* @apiParam {String} name Customer Name
* @apiParam {String} email Customer Email
* @apiParam {String} phone Customer Phone
* @apiParam {String} address Customer Address
* @apiName PutCustomer
* @apiGroup Customer
* @apiDescription Menambah data Customer , type data : application/x-www-form-urlencoded
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
*		{
*		    "status": true,
*		    "message": "congratulation , you success update data",
*		    "data": {
*		        "id": "2",
*		        "name": "Bayu Briyan El Roy",
*		        "email": "bayubriyanelroy@gmal.com",
*		        "phone": "Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur",
*		        "address": "081230008101",
*		        "updated_at": "2019-02-13 08:59:14"
*		    }
*		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*		{
*		    "status": false,
*		    "message": [
*		        "name is required",
*		        "email is required",
*		        "phone is required",
*		        "address is required"
*		    ],
*		    "data": {
*		        "id": "2",
*		        "name": "",
*		        "email": "",
*		        "phone": "",
*		        "address": "",
*		        "updated_at": "2019-02-13 08:59:53"
*		    }
*		}
*/

/**
* @api {delete} {url}/customer/ Delete Customer
* @apiVersion 1.1.0
* @apiParam {Int} id Customer ID
* @apiName DeleteCustomer
* @apiGroup Customer
* @apiDescription Mebhapus data Customer , type data : application/x-www-form-urlencoded
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
*		{
*		    "status": true,
*		    "message": "congratulation , you success delete data",
*		    "data": {
*		        "id": "2",
*		        "name": "Bayu Briyan El Roy",
*		        "email": "bayubriyanelroy@gmal.com",
*		        "phone": "Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur",
*		        "address": "081230008101",
*		        "status": "ENABLE",
*		        "created_at": "2019-02-13 07:42:45",
*		        "updated_at": "2019-02-13 08:59:14"
*		    }
*		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*	{
*	    "status": false,
*	    "message": "Whoops , something trouble with system. please try again !",
*	    "data": []
*	}
*/


/**
* @api {put} {url}/customer/:status Update Status Customer
* @apiVersion 1.1.0
* @apiParam {Int} id Customer ID
* @apiParam {String} status enable,disable
* @apiName StatusCustomer
* @apiGroup Customer
* @apiDescription Mengubah status Customer , type data : application/x-www-form-urlencoded
*
* @apiSuccess {Boolean} status TRUE or FALSE.
* @apiSuccess {String} message response message.
* @apiSuccess {Object} data information customer.
* @apiSuccessExample {json} Success-Response:
*     HTTP/1.1 200 OK
* 		{
* 		    "status": true,
* 		    "message": "congratulation , you success update data",
* 		    "data": {
* 		        "id": "1",
* 		        "status": "ENABLE",
* 		        "updated_at": "2019-02-13 09:05:28"
* 		    }
* 		}
* @apiSuccessExample {json} Error-Response:
*     HTTP/1.1 404 NOT_FOUND
*		{
*		    "status": false,
*		    "message": [
*		        "id is required"
*		    ],
*		    "data": {
*		        "id": null,
*		        "status": "ENABLE",
*		        "updated_at": "2019-02-13 09:06:51"
*		    }
*		}
*/