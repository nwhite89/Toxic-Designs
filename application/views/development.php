<div class="sixteen columns" id="projects">
	<?php
		foreach ($projects as $project)
		{
			echo "<div class=\"five columns\">";
				echo "<div class=\"project\" rel=" . $project['id'] . ">";
					echo "<p>" . $project['title'] . "</p>";
					echo "<div style=\"background-image: url(" . $project['thumbnail'] . ")\">&nbsp;</div>";
				echo "</div>";
			echo "</div>";
		}
	?>
</div>

<!--div class="sixteen columns" id="projects">
	<div class="five columns">
		<div class="project">
			<p>Mobile London Nodejs</p>
			<div style="background-image: url(../img/projects/thumbnails/mobilelondon.png)">&nbsp;</div>
		</div>
	</div>
	<div class="five columns">
		<div class="project">
			I am Ethicon
		</div>
	</div>
	<div class="five columns">
		<div class="project">
			Mobile London iOS
		</div>
	</div>
	<div class="five columns">
		<div class="project">
			Other
		</div>
	</div>
</div-->
<div class="sixteen columns" id="project-view">
	
</div>
<div class="backTop">
</div>