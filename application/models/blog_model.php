<?php
class Blog_model extends CI_Model
{
	public function __construct() 
	{
		parent::__construct();
	}
	public function fetchBlogPost($bid = null)
	{
		$this->db->order_by('blog_date', 'DESC');
		$this->db->where('published !=', '1');
		if ($bid == 'home') { $this->db->limit(3);}
		else { $this->db->where('id', $bid); }
		$query = $this->db->get('td_blog_posts');
		return $query->result();
	}
	public function getBlogPosts($limit, $start)
	{
		$this->load->helper('date');
		$this->db->where('published !=', '1');
		$this->db->order_by('blog_date', 'DESC');
		$this->db->limit($limit, $start);
		$query = $this->db->get('td_blog_posts');
		return $query->result();	
	}
	public function record_count() {
        return $this->db->count_all("td_blog_posts");
    }
    public function fetchComments($bid = null)
	{
		$this->db->order_by('id', 'DESC');
		$this->db->where('post_id', $bid);
		$this->db->where('type', 1);
		$query = $this->db->get('td_comments');
		return $query->result();
	}
	public function addComments($comment = null) {
		$x = 0;
		foreach ($comment as $key => $value) {
			if (($value == '') || ($value == null)) {
				$x = 1;
			}
		}
		if ($x == 0) { 
			$this->db->insert('td_comments', $this->input->post()); 
			return 'true';
		} else {
			return 'false';
		}
	}
}
?>