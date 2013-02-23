<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Development extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->helper('url');
		$this->load->library('pagination');
	}
	public function page ()
	{
		$this->index();
	}
	public function index()
	{
		$this->load->model('development_model');
		$header = array(
			'page' => 'development',
			'class' => 'development',
			'title' => 'Development',
		);
		// Create pagination of blog posts
		$config = array();
		$config['base_url'] = base_url() . 'development/page/';
		$config['total_rows'] = $this->development_model->record_count();
		$config['per_page'] = 6;
		$config['uri_segment'] = 3;
		$choice = $config["total_rows"] / $config["per_page"];
		$config['num_links'] = round($choice);
		$this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		$data = array(
			'projects' => $this->development_model->getProjects($config["per_page"], $page), 
			'links' => $this->pagination->create_links(),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('development', $data);
		$this->load->view('layouts/footer');
	}

	public function viewProject($pid = null)
	{
		$this->load->model('development_model');
		$data = array (
			'project' => $this->development_model->viewProject($pid),
		);
		
		$this->load->view('devProject', $data);
	}
}