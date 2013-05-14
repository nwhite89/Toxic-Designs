<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class WelcomeModel extends CI_Model {

	public function __construct() {
		parent::__construct();
	}
	
	public function record_count($table = null) {
		$this->db->where('published !=', 1);
		return $this->db->count_all_results($table);
	}

	public function tweets() {
		$query = $this->db->query("SELECT * FROM td_tweet_cache ORDER BY RAND() LIMIT 15");

		return $query->result();
	}

	public function getProjects($limit, $start)	{
		$this->db->order_by('date', 'DESC');
		$this->db->where('published !=', '1');
		$this->db->limit($limit, $start);

		$query = $this->db->get('td_development');
		return $query->result();
	}

	public function getLabs($limit, $start)	{
		$this->db->order_by('date', 'DESC');
		$this->db->limit($limit, $start);

		$query = $this->db->get('td_lab');
		return $query->result();
	}

	public function individualItem($pid = null, $table = null) {
		$this->db->where('id', $pid);
		$query = $this->db->get($table);

		return $query->result();
	}

	public function content ($id = null) {
		if ($id != null) { $this->db->where('id', $id); }
		$query = $this->db->get('td_about_content');
		if ($query->num_rows() > 0) {  
			return $query->result(); 
		}
	}

	public function instagram() {
		$query = $this->db->get('td_instagram_cache');
		
		return $query->result();
	}

	public function social() {
		$query = $this->db->get('td_about_social');

		if ($query->num_rows() > 0) {  
			return $query->result(); 
		}
	}
}

/* End of file WelcomeModel.php */
/* Location: ./application/models/WelcomeModel.php */