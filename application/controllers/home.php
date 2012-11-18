<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
	public function index()
	{
		$this->load->model('home_model');
		$header = array(
			'page' => 'home',
			'class' => 'home',
			'title' => 'home',
		);
		$data = array (
			'page'=>'home',
			'tweets'=>$this->home_model->tweets(),
		);
		
		$this->load->view('layouts/header', $header);
		$this->load->view('home', $data);
		$this->load->view('layouts/footer');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */