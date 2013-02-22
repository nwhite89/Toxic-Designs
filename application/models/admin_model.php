<?php
class About_model extends CI_Model
{
	public function __construct() 
	{
		parent::__construct();
	}

	public static function checkAdmin() {
		if ($this->session->userdata('username') == 'nwhite89')
		{
			print_r('true');
			return true;
		} 
		else 
		{
			print_r('false');
			return false;
		}
	}
}
?>