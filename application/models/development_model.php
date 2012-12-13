<?php
class Development_model extends CI_Model
{
	private $developments = array();
	public function __construct()
	{
		parent::__construct();
	}
	public function projects()
	{
		// 
		$this->db->order_by('date', 'DESC');
		$query = $this->db->get('td_development');
		return $query->result();
	}
	public function viewProject($pid = null)
	{
		$this->db->where('id', $pid);
		$query = $this->db->get('td_development');

		return $query;
	}
}
?>