<?php

foreach ($project->result() as $row) {
	echo "<div class=\"sixteen columns\">";
		echo "<span class=\"label full-width\">" . $row->title . "</span>";
		echo "<img src=\"" . base_url() . $row->image . "\" />";
	echo "</div>";
	echo "<div class=\"eight columns upset\">";
		if ($row->url != '') echo "<a href=\"". $row->url ."\" class=\"label full-width\" target=\"_blank\">View Site</a>";
		else echo "<span class=\"label\">Intranet Site</a>";
	echo "</div>";
	echo "<div class=\"sixteen columns box\">";
		echo "<p>" . $row->summary . "</p>";
	echo "</div>";
}

?>