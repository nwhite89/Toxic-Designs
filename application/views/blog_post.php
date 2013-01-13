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
<div id="comments" class="sixteen columns">
	<div id="commentbutton">
		Comment
	</div>
	<div id="form">
		<form action="" method="post" id="blogComments">
			<input type="hidden" name="post_id" id="post_id" value="<?php echo $postid; ?>" />
			<input type="hidden" name="type" id="type" value="1" />
			<input type="text" placeholder="Name" name="name" id="name" />
			<input type="email" placeholder="Email" name="email" id="email" />
			<input type="text" placeholder="Message" name="message" id="message" />
			<button type="submit">Submit</button>
		</form>
	</div>
	<?php
	foreach ($comments as $key => $value) {
			echo '<div class="comment" style="background-image: url(http://www.gravatar.com/avatar/efdf9fc9b744e265d732dd0998953b6a.png)">';
				echo '<p class="name">';
					echo $value->name;
				echo '</p>';
				echo '<p>';
					echo $value->message;
				echo '</p>';
			echo '</div>';
	}
	?>

</div>