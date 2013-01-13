<div id="post" class="sixteen columns">
	<?php
	foreach ($post[0] as $key => $value) {
		if ($key == 'blog_title') {
			echo "<span class='label full-width'>" . $value . "</span>";
		} else if ($key == 'blog_post') {
			echo $value;
		}
	}
	echo '<pre>';
	print_r($comments);
	echo '</pre>';



	foreach ($comments as $key => $value) {
		echo 'Name:' . $value->name;
	}
	?>
</div>

<div id="comments" class="sixteen columns">
	<div class="comment" style="background-image: url(http://www.gravatar.com/avatar/efdf9fc9b744e265d732dd0998953b6a.png)">
		<p class="name">
			Nick White
		</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga sit eum officia cumque dicta nam ad suscipit dignissimos quibusdam libero expedita aliquid facilis deleniti sunt esse nemo impedit debitis accusantium.</p>
	</div>
</div>