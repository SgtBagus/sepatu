<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert extends CI_Controller  {

	protected $CI;

	public function __construct()
	{	
		$this->CI =& get_instance();
	}
	public function alertsuccess($status=null)
	{
		# code...
		echo '<div class="alert alert-success ks-solid ks-active-border" role="alert">';
		echo '	<button type="button" class="close" data-dismiss="alert" aria-label="Close">';
		echo '		<span aria-hidden="true" class="fa fa-close"></span>';
		echo '	</button>';
		echo '	<h5 class="alert-heading">Alert</h5>';
		echo '		<ul>';
		echo "			<li>$status</li>";
		echo '		</ul>';
		echo '</div>';
	}

	public function alertdanger($error=null)
	{
		# code...
		echo '<div class="alert alert-danger ks-solid ks-active-border" role="alert">';
		echo '	<button type="button" class="close" data-dismiss="alert" aria-label="Close">';
		echo '		<span aria-hidden="true" class="fa fa-close"></span>';
		echo '	</button>';
		echo '	<h5 class="alert-heading">Warning</h5>';
		echo '		<ul>';
		if($error==null){
        	echo "			<li>Something Error</li>";
		}else{
        	echo "			$error";
		}
		
		echo '		</ul>';
		echo '</div>';
	}

}
