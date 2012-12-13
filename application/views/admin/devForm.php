<?php
/*
foreach ($project->result() as $row)
{

		echo "<span class=\"label full-width\">" . $row->title . "</span>";
		echo "<img src=\"" . base_url() . $row->image . "\" />";
	echo "</div>";
	echo "<div class=\"eight columns upset\">";
		if ($row->url != '') echo "<a href=\"". $row->url ."\" class=\"label full-width\" target=\"_blank\">View Site</a>";
		else echo "<span class=\"label\">Intranet Site</a>";
	echo "</div>";
	echo "<div class=\"sixteen columns box\">";
		echo "<p>" . $row->text . "</p>";
	echo "</div>";
}

*/

foreach ($project->result() as $i => $x)
{
	/*
	echo "<div class=\"sixteen columns\">";
		echo "<form id=\"devProject\" method=\"post\" action=\"\">";
			echo "<label for=\"projectName\">";
				echo "<input class=\"full-width\" type=\"text\" name=\"projectName\" id=\"projectName\" placeholder=\"Project Name\" value=\"".$row->title."\" />";
		echo "</form>";
	echo "</div>";
	*/
	foreach ($x as $y) {
		echo $y;
	}
}
?>