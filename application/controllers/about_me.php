<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About_me extends CI_Controller 
{
	public function index()
	{
		$this->load->model('about_model');
		$header = array(
			'page' => 'aboutme',
			'class' => 'about-me',
			'title' => 'About Me',
		);
		$data = array(
			'instagram' => $this->about_model->instagram(),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('about.php', $data);
		$this->load->view('layouts/footer');
	}
}