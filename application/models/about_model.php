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

		private function getInstagramPhotos ()
		{
			/*$jsonurl = "https://api.instagram.com/v1/users/self/media/recent?access_token=48050029.1fb234f.dbb565648f8642e5aa832251bf0d8b56&client_id=f5a6171453de48218d0b58c10e7479e2&client_secret=176e511498824bd4b90070c17bf736b1";
			$json = file_get_contents($jsonurl, 0, null, null);
			$json_output = json_decode($json);
			$data = $json_output->data;
			//print '<pre>';
			//	print_r($data);
			//print '</pre>';
			foreach ($data as $key => $value) {
				if ($key < 9)
				{
					$this->instagramPhotos[] = $value->images->thumbnail->url;
				}
			}*/
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

		public function content ()
		{
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