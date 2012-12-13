<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller 
{
	public function index()
	{
		$header = array(
			'page' => 'admin',
			'class' => 'admin',
			'title' => 'admin',
		);
		$this->load->view('layouts/header', $header);
		if ($this->session->userdata('username') == 'nwhite89')
		{

		} 
		else 
		{
			$this->loginForm();
		}

		$this->load->view('layouts/footer');
	}

	public function login()
	{
		if (($this->input->post('username') == 'nwhite89') && ($this->input->post('password') == 'manutd'))
		{
			
		}
		else 
		{
			$this->index();
		}
	}

	public function development($pid = null) 
	{
		if($pid == null)
		{

		}
		else 
		{	
			
			$this->load->model('development_model');
			$data = array (
				'project' => $this->development_model->viewProject($pid),
			);

			$header = array(
				'page' => 'admin',
				'class' => 'development',
				'title' => 'Admin',
			);

			$this->load->view('layouts/header', $header);
			$this->load->view('admin/devForm', $data);
			$this->load->view('layouts/footer');
		}
	}

	private function loginForm() 
	{
		$this->load->view('admin/loginForm');
	}
}