<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api {

  public function access($url,$method,$data)
  {
    # code...
      $curl = curl_init();

      curl_setopt_array($curl, array(
        CURLOPT_URL => "http://gatoko1.com/sop/api/".$url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => $method,
        CURLOPT_POSTFIELDS => $data,
        CURLOPT_HTTPHEADER => array(
          "authorization: Basic c21hcnRzb2Z0OjM1ZDNkMDhjM2Q3YjdmNDQ1Y2ViOGU3MjZhODdiMjZj",
          "cache-control: no-cache",
          "postman-token: a99bba16-ad49-13bc-4f20-f6991eb24681",
          "x-api-key: 35d3d08c3d7b7f445ceb8e726a87b26c"
        ),
      ));

      $response = curl_exec($curl);
      $err = curl_error($curl);
      curl_close($curl);

      if ($err) {
        echo "cURL Error #:" . $err;
      } else {
        echo $response;
      }
  }
}

