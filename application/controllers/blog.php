<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends CI_Controller
{
	public function index()
	{
		$header = array(
			'page' => 'blog',
			'class' => 'blog',
			'title' => 'Blog',
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('blog');
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
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('blog_post', $data);
		$this->load->view('layouts/footer');
	}
}