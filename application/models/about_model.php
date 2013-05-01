<?php
	/**
	* 
	*/
	class About_model extends CI_Model
	{
		private $instagramPhotos = array();
		public function __construct() 
		{
			parent::__construct();
		}

		public function instagram()
		{
			$query = $this->db->get('td_instagram_cache');
			foreach ($query->result() as $row)
			{
				$x = array();
				$x['thumbnail_url'] = $row->thumbnail_url;
				$this->instagramPhotos[] = $x;
			}

			//$this->getInstagramPhotos();
			return $this->instagramPhotos;
		}

		public function social ()
		{
			$query = $this->db->get('td_about_social');

			if ($query->num_rows() > 0) {  
				return $query->result(); 
			} else {  
				show_error('Database is empty!');   
			}
		}

		public function content ($id = null)
		{
			if ($id != null) { $this->db->where('id', $id); }
			$query = $this->db->get('td_about_content');
			if ($query->num_rows() > 0)
			{  
				return $query->result(); 
			} else 
			{  
				show_error('Database is empty!');   
			}
		}
	}
?>