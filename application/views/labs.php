<div class="sixteen columns" id="labs">
	<p class="pagination"><?php echo $links; ?></p>
	<?php
		foreach ($labs as $lab)
		{
			echo "<div class=\"five columns\">";
				echo "<div class=\"project\" rel=" . $lab->id . ">";
					echo "<p>" . $lab->title . "</p>";
				echo "</div>";
			echo "</div>";
		}
	?>
</div>
<div class="backTop"><p>Back to Top</p></div>
</div>
<div class="container">
	<div id="project-view">
	
	</div>
</div>