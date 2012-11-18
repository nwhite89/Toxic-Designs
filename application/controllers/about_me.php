<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About_me extends CI_Controller 
{
	public function index()
	{
		$header = array(
			'page' => 'aboutme',
			'class' => 'about-me',
			'title' => 'About Me',
		);

		$this->load->view('layouts/header', $header);
		$this->load->view('about.php');
		$this->load->view('layouts/footer');
	}
}