<?php

$con = mysql_connect('localhost', 'portfolio', 'portfolio');
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("portfolio", $con);
mysql_query("TRUNCATE td_tweet_cache");
$hastags = array('nodesjs', 'jquery', 'javascript', 'php', 'mysql');

foreach ($hastags as $key => $value)
{
	$jsonurl = "http://search.twitter.com/search.json?lang=en&q=%23" . $value;
	$json = file_get_contents($jsonurl,0,null,null);
	$json_output = json_decode($json);
	$results = $json_output->results;

	foreach ($results as $tweet) {
		$tweetDate = date("d/m/Y", strtotime($tweet->created_at));
		//echo $tweetDate . $tweet->text . "<br /><br />" . str_replace("'", '', $tweet->text) . "<br /><br />";
		mysql_query("INSERT INTO td_tweet_cache (hashtag, date, text, user) VALUES ('$value', '$tweetDate', '".addslashes($tweet->text)."', '$tweet->from_user')") or die(mysql_error());  ;
	}
}
?>