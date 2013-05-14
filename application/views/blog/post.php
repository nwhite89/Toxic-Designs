<div id="post" class="sixteen columns">
	<?php
	foreach ($post[0] as $key => $value) {
		if ($key == 'blog_title') {
			echo "<span class='label full-width'>" . $value . "</span>";
		} else if ($key == 'blog_post') {
			echo $value;
		}
	}
?>
</div>