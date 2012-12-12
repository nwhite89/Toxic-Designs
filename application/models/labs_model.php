<?php

class Labs_model extends CI_Model
{
	private $labs = array();
	public function __construct()
	{
		parent::__construct();
	}

	public function labs()
	{
		$query = $this->db->get('td_lab');
		return $query->result();
	}
	
	public function viewProject($pid = null)
	{
		$this->db->where('id', $pid);
		$query = $this->db->get('td_lab');

		return $query;
	}
}

?>