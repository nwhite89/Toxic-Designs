<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Labs extends CI_Controller
{
	public function index()
	{
		$this->load->model('labs_model');
		$header = array(
			'page' => 'labs',
			'class' => 'labs',
			'title' => 'Labs',
		);
		$data = array(
			'labs' => $this->labs_model->labs(), 
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('labs', $data);
		$this->load->view('layouts/footer');
	}

	public function viewProject($pid = null)
	{
		$this->load->model('labs_model');
		$data = array (
			'project' => $this->labs_model->viewProject($pid),
		);
		
		$this->load->view('labProject', $data);
	}
}

?>