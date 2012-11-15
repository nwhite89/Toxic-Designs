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

		private function getTweets($hashtag)
		{
			// Recieve tweets based on the hashtag passed to the function
			$jsonurl = "http://search.twitter.com/search.json?q=%23".$hashtag;
			$json = file_get_contents($jsonurl,0,null,null);
			//$json_output = json_decode($json);
			$json_output = FastJSON::decode($json);
			$results = $json_output->results;

			// Get a random tweet from the JSON and remove from the JSON Array
			$item = rand(0, (count($results)-1));
			$this->tweetsArray[] = $results[$item];
			unset($results[$item]);

			// Get last random tweet from the JSON
			$results = array_values($results);
			$item = rand(0, (count($results)-1));
			$this->tweetsArray[] = $results[$item];
		}

		public function tweets() 
		{
			// Set different tweet hashtags wanted for the home page carousel
			$hash = array('nodejs', 'php', 'web', 'html5', 'jquery', 'javascript', 'dev');
			
			// Loop through the hashtag array and return the array
			foreach ($hash as $tag) {
				$this->getTweets($tag);
			}
			return $this->tweetsArray;
		}

	}
?>