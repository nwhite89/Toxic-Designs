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
		$this->db->order_by('date', 'DESC');
		$this->db->where('published !=', '1');
		$query = $this->db->get('td_development');
		return $query->result();
	}
	public function getProjects($limit, $start)
	{
		$this->db->order_by('date', 'DESC');
		$this->db->where('published !=', '1');
		$this->db->limit($limit, $start);
		$query = $this->db->get('td_development');
		return $query->result();	
	}
	public function viewProject($pid = null)
	{
		$this->db->where('id', $pid);
		$query = $this->db->get('td_development');

		return $query;
	}
	public function record_count() {
        return $this->db->count_all("td_development");
    }
}
?>