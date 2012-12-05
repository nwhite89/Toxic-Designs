<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Development extends CI_Controller
{
	public function index()
	{
		$this->load->model('development_model');
		$header = array(
			'page' => 'development',
			'class' => 'development',
			'title' => 'Development',
		);
		$data = array(
			'projects' => $this->development_model->projects(), 
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('development', $data);
		$this->load->view('layouts/footer');
	}

	public function viewProject($pid = null)
	{
		/*if($pid) {

		if ($is_ajax() {
			
		})
		} else {


		}
			*/
		/*$this->load->model('development_model');
		$data = array (
			'project' => $this->development_model->viewProject($pid),
		);*/
		$this->load->view('devProject');
	}
}