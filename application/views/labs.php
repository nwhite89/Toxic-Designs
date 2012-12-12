<div class="sixteen columns" id="labs">
	<?php
		foreach ($labs as $lab)
		{
			echo "<div class=\"five columns\">";
				echo "<div class=\"project\" rel=" . $lab->id . ">";
					echo "<p>" . $lab->title . "</p>";
					echo "<div style=\"background-image: url(" . base_url() . $lab->thumbnail . ")\">&nbsp;</div>";
				echo "</div>";
			echo "</div>";
		}
	?>
</div>
<div class="backTop"><p>Back to Top &#187;</p></div>
</div>
<div class="container">
	<div id="project-view">
	
	</div>
</div>