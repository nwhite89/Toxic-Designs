<div class="sixteen columns" id="projects">
	<p class="pagination"><?php echo $links; ?></p>
	<?php
		foreach ($projects as $project)
		{
			echo "<div class=\"five columns\">";
				echo "<div class=\"project\" rel=" . $project->id . ">";
					echo "<p>" . $project->title . "</p>";
					echo "<div style=\"background-image: url(" . base_url() . $project->thumbnail . ")\">&nbsp;</div>";
				echo "</div>";
			echo "</div>";
		}
	?>
</div>
<div class="backTop"><p>Back to Top</p></div>
</div>
<div class="container">
	<div id="project-view">
		<img src="<?php echo base_url(); ?>img/ajax-loader.gif" />
	</div>
</div>