<?php
	/**
	* 
	*/
	class Home_model extends CI_Model
	{
		private $tweetsArray = array();
		public function __construct() 
		{
			parent::__construct();
		}

		public function tweets() {
			// Set different tweet hashtags wanted for the home page carousel
			$hash = array('nodejs', 'php', 'html5', 'jquery', 'javascript');
			
			// Loop through the hashtag array and return the array
			$query = $this->db->query('SELECT * FROM td_tweet_cache ORDER BY RAND() LIMIT 15');

			foreach ($query->result() as $row)
			{
				$x = array();
				$x['user'] = $row->user;
				$x['date'] = $row->date;
				$x['text'] = $row->text;
				$x['hashtag'] = $row->hashtag;
				$this->tweetsArray[] = $x;
			}

			return $this->tweetsArray;
		}
	}
?>