<?php

foreach ($project->result() as $row) {
	echo "<div class=\"sixteen columns\">";
		echo "<span class=\"label full-width\">" . $row->title . "</span>";
	echo "</div>";
	echo "<div class=\"eight columns upset\">";
		if(($row->url != '') && ($row->url_title != '')) { echo "<a href=\"". $row->url ."\" class=\"label full-width\" target=\"_blank\">".$row->url_title."</a>"; }
	echo "</div>";
	echo "<div class=\"sixteen columns box\">";
		echo "<p>" . $row->text . "</p>";
	echo "</div>";
}

?>