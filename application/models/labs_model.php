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
		$this->db->order_by('date', 'DESC');
		$query = $this->db->get('td_lab');
		return $query->result();
	}
	public function getLabs($limit, $start)
	{
		$this->db->order_by('date', 'DESC');
		$this->db->limit($limit, $start);
		$query = $this->db->get('td_lab');
		return $query->result();	
	}
	public function viewProject($pid = null)
	{
		$this->db->where('id', $pid);
		$query = $this->db->get('td_lab');

		return $query;
	}

	public function record_count() {
        return $this->db->count_all("td_lab");
    }
}

?>