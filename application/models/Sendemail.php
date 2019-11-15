<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Sendemail extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }


    public function kirimemail($name, $toemail, $subjectemail, $content, $content2 = null, $button = null)
    {
        $this->load->library('email');
        $config = array(
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl://karyastudio.com',
            'smtp_port' => 465,
            'smtp_user' => 'shoekashoes@karyastudio.com',
            'smtp_pass' => 'karya123studio',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE
        );
        $this->email->initialize($config);
        $this->email->set_mailtype("html");
        $this->email->set_newline("\r\n");

        $fromemail = 'shoekashoes@karyastudio.com';
        $fromname = 'SHOEKASHOES';
        $this->sendemail->register($name, $toemail, $fromemail, $fromname, $subjectemail, $content, $content2, $button);
    }

    public function template($name, $content, $content2 = null, $button = null)
    {
        $html = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <title>Koperasi Tokokarya</title>
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
        <style type="text/css">
        html { -webkit-text-size-adjust: none; -ms-text-size-adjust: none;}
        @media only screen and (min-device-width: 750px) {
            .table750 {width: 750px !important;}
        }
        @media only screen and (max-device-width: 750px), only screen and (max-width: 750px){
            table[class="table750"] {width: 100% !important;}
            .mob_b {width: 93% !important; max-width: 93% !important; min-width: 93% !important;}
            .mob_b1 {width: 100% !important; max-width: 100% !important; min-width: 100% !important;}
            .mob_left {text-align: left !important;}
            .mob_soc {width: 50% !important; max-width: 50% !important; min-width: 50% !important;}
            .mob_menu {width: 50% !important; max-width: 50% !important; min-width: 50% !important; box-shadow: inset -1px -1px 0 0 rgba(255, 255, 255, 0.2); }
            .mob_center {text-align: center !important;}
            .top_pad {height: 15px !important; max-height: 15px !important; min-height: 15px !important;}
            .mob_pad {width: 15px !important; max-width: 15px !important; min-width: 15px !important;}
            .mob_div {display: block !important;}
        }
        @media only screen and (max-device-width: 550px), only screen and (max-width: 550px){
            .mod_div {display: block !important;}
        }
        .table750 {width: 750px;}
        </style>
        </head>
        <body style="margin: 0; padding: 0;">

        <table cellpadding="0" cellspacing="0" border="0" width="100%" style="background: #f3f3f3; min-width: 350px; font-size: 1px; line-height: normal;">
        <tr>
        <td align="center" valign="top">             
        <table cellpadding="0" cellspacing="0" border="0" width="750" class="table750" style="width: 100%; max-width: 750px; min-width: 350px; background: #f3f3f3;">
        <tr>
        <td class="mob_pad" width="25" style="width: 25px; max-width: 25px; min-width: 25px;">&nbsp;</td>
        <td align="center" valign="top" style="background: #ffffff;">

        <table cellpadding="0" cellspacing="0" border="0" width="100%" style="width: 100% !important; min-width: 100%; max-width: 100%; background: #f3f3f3;">
        <tr>
        <td align="right" valign="top">
        <div class="top_pad" style="height: 25px; line-height: 25px; font-size: 23px;">&nbsp;</div>
        </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="88%"  style="width: 88% !important; min-width: 88%; max-width: 88%; margin-top: 15px">
        <tr>
        <td align="left" valign="top">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 52px; line-height: 60px; font-weight: 300; letter-spacing: -1.5px;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 52px; line-height: 60px; font-weight: 300; letter-spacing: -1.5px;">Hi ' . $name . '!</span>
        </font>
        <div style="height: 33px; line-height: 33px; font-size: 31px;">&nbsp;</div>
        <font face="Source Sans Pro, sans-serif" color="#585858" style="font-size: 24px; line-height: 32px;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #585858; font-size: 24px; line-height: 32px;">' . $content . '</span>
        </font>
        <div style="height: 20px; line-height: 20px; font-size: 18px;">&nbsp;</div>
        <font face="Source Sans Pro, sans-serif" color="#585858" style="font-size: 24px; line-height: 32px;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #585858; font-size: 24px; line-height: 32px;">' . $content2 . '</span>
        </font>
        <div style="height: 33px; line-height: 33px; font-size: 31px;">&nbsp;</div>
        <table class="mob_btn" cellpadding="0" cellspacing="0" border="0" border-radius: 4px;">
        <tr>
        <td align="center" valign="top"> 
        ' . $button . '
        </td>
        </tr>
        </table>
        <div style="height: 75px; line-height: 75px; font-size: 73px;">&nbsp;</div>
        </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%" style="width: 100% !important; min-width: 100%; max-width: 100%; background: #f3f3f3;">
        <tr>
        <td align="center" valign="top">
        <div style="height: 34px; line-height: 34px; font-size: 32px;">&nbsp;</div>
        <table cellpadding="0" cellspacing="0" border="0" width="88%" style="width: 88% !important; min-width: 88%; max-width: 88%;">
        <tr>
        <td align="center" valign="top">
        <table cellpadding="0" cellspacing="0" border="0" width="78%" style="min-width: 300px;">
        <tr>
        <td align="center" valign="top" width="23%">                                             
        <a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">HELP&nbsp;CENTER</span>
        </font>
        </a>
        </td>
        <td align="center" valign="top" width="10%">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 17px; line-height: 17px; font-weight: bold;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 17px; font-weight: bold;">&bull;</span>
        </font>
        </td>
        <td align="center" valign="top" width="23%">
        <a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">SUPPORT&nbsp;24/7</span>
        </font>
        </a>
        </td>
        <td align="center" valign="top" width="10%">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 17px; line-height: 17px; font-weight: bold;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 17px; font-weight: bold;">&bull;</span>
        </font>
        </td>
        <td align="center" valign="top" width="23%">
        <a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 14px; line-height: 20px; text-decoration: none; white-space: nowrap; font-weight: bold;">ACCOUNT</span>
        </font>
        </a>
        </td>
        </tr>
        </table>
        <div style="height: 34px; line-height: 34px; font-size: 32px;">&nbsp;</div>
        <font face="Source Sans Pro, sans-serif" color="#868686" style="font-size: 17px; line-height: 20px;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #868686; font-size: 17px; line-height: 20px;">Copyright &copy; Pilot Project Sistem E-Koperasi. All&nbsp;Rights&nbsp;Reserved. We&nbsp;appreciate&nbsp;you!</span>
        </font>
        <div style="height: 3px; line-height: 3px; font-size: 1px;">&nbsp;</div>
        <font face="Source Sans Pro, sans-serif" color="#1a1a1a" style="font-size: 17px; line-height: 20px;">
        <span style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 20px;"><a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 20px; text-decoration: none;">help@cuansela.com</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 20px; text-decoration: none;">1(800)232-90-26</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="#" target="_blank" style="font-family: Source Sans Pro, Arial, Tahoma, Geneva, sans-serif; color: #1a1a1a; font-size: 17px; line-height: 20px; text-decoration: none;">Unsubscribe</a></span>
        </font>
        <div style="height: 35px; line-height: 35px; font-size: 33px;">&nbsp;</div>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>  

        </td>
        <td class="mob_pad" width="25" style="width: 25px; max-width: 25px; min-width: 25px;">&nbsp;</td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </body>
        </html>';
        return $html;
    }

    public function register($name, $toemail, $fromemail, $fromname, $subjectemail, $content, $content2, $button)
    {
        $pesan = $this->template($name, $content, $content2, $button);

        $this->email->to($toemail);
        $this->email->from($fromemail, $fromname);
        $this->email->subject($subjectemail);
        $this->email->message($pesan);
        $this->email->send();
    }
}
