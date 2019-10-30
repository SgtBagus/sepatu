<?php 

function curUrl(){
    $CI =& get_instance();
    $url ='';
    if(strtolower($CI->router->fetch_method()) == 'index'){
        $url  = $CI->router->fetch_directory().$CI->router->fetch_class();
    } else{
        $url  = $CI->router->fetch_directory().$CI->router->fetch_class().'/'.$CI->router->fetch_method();
    }
    $url = strtolower($url);
    return $url;
}

function curCname(){
    $CI =& get_instance();
    $url ='';
    $url  = $CI->router->fetch_directory().$CI->router->fetch_class();
    $url = strtolower($url);
    return $url;
}


// public function direktori()
	// {
		// $ci = get_class_methods($this);
		// print_r($ci);
	// }
 ?>
