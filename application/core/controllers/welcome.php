<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->helper('url');
		$this->load->library('pagination');
		$this->load->model('WelcomeModel');
	}

	public function index() {
		$this->load->model('BlogModel');
		$header = array(
			'page' => 'home',
			'class' => 'home',
			'title' => 'Home',
		);
		$data = array (
			'page'=>'home',
			'tweets'=>$this->WelcomeModel->tweets(),
			'posts' => $this->BlogModel->getBlogList(4,0), 
			'devprojects' => $this->WelcomeModel->getProjects(4, 0),
			'skills' => $this->WelcomeModel->content(2),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('welcome/home', $data);
		$this->load->view('layouts/footer');
	}

	public function about() {
		$header = array(
			'page' => 'aboutme',
			'class' => 'about-me',
			'title' => 'About Me',
		);
		$data = array(
			'instagram' => $this->WelcomeModel->instagram(),
			'social' => $this->WelcomeModel->social(),
			'content' => $this->WelcomeModel->content(),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('welcome/about', $data);
		$this->load->view('layouts/footer');
	}

	public function labs() {
		$header = array(
			'page' => 'labs',
			'class' => 'labs',
			'title' => 'Labs',
		);
		// Create pagination of blog posts
		$config = array();
		$config['base_url'] = base_url() . 'labs/page/';
		$config['total_rows'] = $this->WelcomeModel->record_count('td_lab');
		$config['per_page'] = 6;
		$config['uri_segment'] = 3;
		$choice = $config["total_rows"] / $config["per_page"];
		$config['num_links'] = round($choice);
		$this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		$data = array(
			'labs' => $this->WelcomeModel->getLabs($config["per_page"], $page), 
			'links' => $this->pagination->create_links(),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('welcome/labs', $data);
		$this->load->view('layouts/footer');
	}

	public function viewLab($pid = null) {
		$data = array (
			'project' => $this->WelcomeModel->individualItem($pid, 'td_lab'),
		);

		$this->load->view('welcome/labProject', $data);
	}

	public function development() {
		$header = array(
			'page' => 'development',
			'class' => 'development',
			'title' => 'Development',
		);
		// Create pagination of blog posts
		$config = array();
		$config['base_url'] = '/development/page/';
		$config['total_rows'] = $this->WelcomeModel->record_count('td_development');
		$config['per_page'] = 6;
		$config['uri_segment'] = 3;
		$choice = $config["total_rows"] / $config["per_page"];
		$config['num_links'] = 5;
		$this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		$data = array(
			'projects' => $this->WelcomeModel->getProjects($config["per_page"], $page), 
			'links' => $this->pagination->create_links(),
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('welcome/development', $data);
		$this->load->view('layouts/footer');
	}

	public function viewDev($pid = null) {
		$data = array (
			'project' => $this->WelcomeModel->individualItem($pid, 'td_development'),
		);
		
		$this->load->view('welcome/devProject', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */