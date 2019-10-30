<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mlogin extends CI_Model {
  public function __construct()
  {
    parent::__construct();
    $this->load->database();
  }
  
  
  public function login($email, $password)
  {
    $email_special = htmlspecialchars($this->db->escape($email));
    $password_password = htmlspecialchars($this->db->escape($password));
    $this->db->select('*');
    $this->db->from('user');
    $this->db->where("nip = $email_special"); 
    $this->db->where("password = $password_password");
    $query = $this->db->get();
    return $query->num_rows();
  }
  
  
  public function data($email)
  {
   $email_special = htmlspecialchars($this->db->escape($email));    
   $this->db->select('*');
   $this->db->where("nip = $email_special"); 
   
   $query = $this->db->get('user');
   
   return $query->row();
  }

  
}  

?>
