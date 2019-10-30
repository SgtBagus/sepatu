<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dropdown extends My_Controller {

	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		$data['page_name'] = "Dropdown";
		$this->template->load('template/template','dropdown/index',$data);
	}

	public function generate()
	{
$param = $this->input->post();
$select = '
<select class="form-control select2" name="'.$param['name'].'">
	<option value="">--Pilih '.ucwords(str_replace('_', ' ', $param['table'])).'--</option>
	<?php
		$'.strtolower($param['table']).' = $this->mymodel->selectData("'.$param['table'].'");
		foreach ($'.strtolower($param['table']).' as $key => $value) {
	?>
	<option value="<?= $value[\''.$param['value'].'\'] ?>"><?= $value[\''.$param['option'].'\'] ?></option>
	<?php } ?>
</select>
';
$result = htmlspecialchars($select);
		echo $result;
	}

}

/* End of file Tinymce.php */
/* Location: ./application/controllers/Tinymce.php */