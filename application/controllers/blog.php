<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->helper('url');
		$this->load->library('pagination');
		$this->load->model('BlogModel');
	}

	public function page() {
		$this->index();
	}

	public function index() {
		$this->load->model('WelcomeModel');
		$header = array(
			'page' => 'blog',
			'class' => 'blog',
			'title' => 'Blog',
		);

		$config = array();
		$config['base_url'] = base_url() . 'blog/page/';
		$config['total_rows'] = $this->WelcomeModel->record_count('td_blog_posts');
		$config['per_page'] = 5;
		$config['uri_segment'] = 3;
		$choice = $config["total_rows"] / $config["per_page"];
		$config['num_links'] = round($choice);
		$this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		$data = array(
			'posts' => $this->BlogModel->getBlogList($config['per_page'], $page),
			'links' => $this->pagination->create_links(),
		);

		$this->load->view('layouts/header', $header);
		$this->load->view('blog/index', $data);
		$this->load->view('layouts/footer');
	}

	public function post($route = '') {
		$post = $this->BlogModel->getArticle($route);

		$header = array(
			'page' => 'blog', 
			'class' => 'blog',
			'title' => 'Blog',
		);

		$data = array(
			'post' => $post,
		);

		$this->load->view('layouts/header', $header);
		$this->load->view('blog/post', $data);
		$this->load->view('layouts/footer');
	}
}

/* End of file blog.php */
/* Location: ./application/controllers/blog.php */