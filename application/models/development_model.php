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
		$query = $this->db->get('td_development');
		foreach ($query->result() as $row)
		{
			$x = array();
			$x['id'] = $row->id;
			$x['title'] = $row->title;
			$x['thumbnail'] = $row->thumbnail;
			$x['image'] = $row->image;
			$x['date'] = $row->date;
			$x['summary'] = $row->summary;
			$x['url'] = $row->url;
			$this->developments[] = $x;
		}

		return $this->developments;
	}
	public function viewProject($pid = null)
	{
		$this->db->where('id', $pid);
		$query = $this->db->get('td_development');

		print '<pre>';
			print_r($query->result());
		print '</pre>';

		return $query;
	}
}
?>