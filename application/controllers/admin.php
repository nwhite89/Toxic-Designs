<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller
{
	public function __construct() {
        parent::__construct();
        $this->init();
    }

    public function init()
    {
    	Admin::checkAdmin();
    }

	public function index()
	{
		$header = array(
			'page' => 'admin',
			'class' => 'admin',
			'title' => 'admin',
		);
		$this->load->view('layouts/header', $header);
		if(!$this->adminCheck()) {
			$this->loginForm();
		}
		$this->load->view('layouts/footer');
	}

	public function login()
	{
		if (($this->input->post('username') == 'nwhite89') && ($this->input->post('password') == 'manutd'))
		{
			$userdata = array(
				'username' => 'nwhite89'
			);
			$this->session->set_userdata($userdata);
			$this->development();
		}
		else 
		{
			$this->index();
		}
	}

	public function development($pid = null) 
	{
		$header = array(
			'page' => 'admin',
			'class' => 'development',
			'title' => 'Admin',
		);
		if($this->adminCheck()) {
			$this->load->view('layouts/header', $header);
			if($pid == null)
			{
				$this->load->view('admin/devForm');
			}
			else 
			{	
				
				$this->load->model('development_model');
				$data = array (
					'project' => $this->development_model->viewProject($pid),
				);

				$this->load->view('admin/devForm', $data);
			}
			$this->load->view('layouts/footer');
		}
		else {
			$this->index();
		}
	}

	private function loginForm() 
	{
		$this->load->view('admin/loginForm');
	}
	public function updateProject()
	{
		$array = array('id'=>$this->input->post('id'));
		$this->db->where($array);
		$this->db->update('td_development', $this->input->post());
		$this->development($this->input->post('id'));
	}
	public function newProject()
	{
		$this->db->insert('td_development', $this->input->post());
		$this->development($this->db->insert_id());
	}

	public function newBlogPost()
	{
		$header = array(
			'page' => 'admin',
			'class' => 'blog',
			'title' => 'Admin',
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('admin/blogNewForm');
		$this->load->view('layouts/footer');
	}

	public function updateBlogPost($bid = null)
	{
		if ($bid == null) {
			$this->newBlogPost();
		} else {
			$header = array(
				'page' => 'admin',
				'class' => 'blog',
				'title' => 'Update Blog post',
			);
			$array = array('id'=>$bid);
			$this->db->where($array);
			$query = $this->db->get('td_blog_posts');
			$data = array( 
				'post' => $query,
			);
			$this->load->view('layouts/header', $header);
			$this->load->view('admin/blogNewForm', $data);
			$this->load->view('layouts/footer');
		}
	}

	public function blogPostSubmit()
	{
		if($this->input->post('id')) {
			$array = array('id'=>$this->input->post('id'));
			$this->db->where($array);
			$this->db->update('td_blog_posts', $this->input->post());
			redirect('/blog/posts/'.$this->input->post('id'));
		} else {
			$this->db->insert('td_blog_posts', $this->input->post());
			redirect('/blog/posts/'.$this->db->insert_id());
		}
	}

	public function newLabPost()
	{
		$header = array(
			'page' => 'admin',
			'class' => 'labs',
			'title' => 'Admin',
		);
		$this->load->view('layouts/header', $header);
		$this->load->view('admin/labNewForm');
		$this->load->view('layouts/footer');
	}

	public function labSubmit()
	{
		$this->db->insert('td_lab', $this->input->post());
		redirect('/labs');
	}

	private function adminCheck()
	{
		if ($this->session->userdata('username') == 'nwhite89')
		{
			return true;
		} 
		else 
		{
			return false;
		}
	}
}