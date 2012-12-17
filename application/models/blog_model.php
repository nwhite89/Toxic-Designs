<?php
class Blog_model extends CI_Model
{
	public function __construct() 
	{
		parent::__construct();
	}
	public function fetchBlogPost($bid = null)
	{
		if ($bid != null) {
			$this->db->where('id', $bid);
		} else {

		}
		$query = $this->db->get('td_blog_posts');
		return $query->result();
	}
}
?>