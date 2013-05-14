<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BlogModel extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function getBlogList($limit, $start) {
		$this->db->where('published !=', '1');
		$this->db->order_by('blog_date', 'DESC');
		$this->db->limit($limit, $start);
		$query = $this->db->get('td_blog_posts');

		return $query->result();
	}

	public function getArticle($route = '') {
		$this->db->limit(1);
		$this->db->where('published !=', '1');
		$this->db->where('route', $route);
		$query = $this->db->get('td_blog_posts');

		return $query->result();
	}
}

/* End of file BlogModel.php */
/* Location: ./application/models/BlogModel.php */