<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends CI_Controller
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
		$this->load->model('blog_model');
		$header = array(
			'page' => 'blog',
			'class' => 'blog',
			'title' => 'Blog',
		);
		

		// Create pagination of blog posts
		$config = array();
		$config['base_url'] = base_url() . 'blog/page/';
		$config['total_rows'] = $this->blog_model->record_count();
		$config['per_page'] = 5;
		$config['uri_segment'] = 3;
		$choice = $config["total_rows"] / $config["per_page"];
		$config['num_links'] = round($choice);
		$this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data = array(
			'posts' => $this->blog_model->getBlogPosts($config["per_page"], $page),
			'links' => $this->pagination->create_links(),
		);

		$this->load->view('layouts/header', $header);
		$this->load->view('blog', $data);
		$this->load->view('layouts/footer');
	}
	public function posts($bid = null)
	{
		if($bid == null) {
			redirect('home');
		}
		$this->load->model('blog_model');
		$header = array(
			'page' => 'blog',
			'class' => 'blog',
			'title' => 'Blog',
		);
		$data = array(
			'post' => $this->blog_model->fetchBlogPost($bid),
			'comments' => $this->blog_model->fetchComments($bid),
			'postid' => $bid,
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('blog_post', $data);
		$this->load->view('layouts/footer');
	}
}