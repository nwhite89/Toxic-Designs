<div id="post" class="sixteen columns">
	<?php
	foreach ($post[0] as $key => $value) {
		if ($key == 'blog_title') {
			echo "<span class='label full-width'>" . $value . "</span>";
		} else if ($key == 'blog_post') {
			echo $value;
		}
	}
  	if ($posted == 'true') {
		echo "<div class='comment-note'>";
			echo "<p class='success'>Thank you for your comment.</p>";
		echo "</div>";
	} else if ($posted == 'false') {
		echo "<div class='comment-note'>";
			echo "<p class='error'>Apologies but there seemed to have been an error with your post please ensure that all fields are completed.</p>";
		echo "</div>";
	}
	?>
</div>
<div id="comments" class="sixteen columns">
	<div id="commentbutton" class="four columns alpha omega offset-by-twelve">
		<span class="label">
			Comment
		</span>
	</div>
    <br class="clear" />
	<div id="form">
		<form action="<?php echo base_url(); ?>blog/posts/8" method="post" id="blogComments">
			<input required="required" type="hidden" name="post_id" id="post_id" value="<?php echo $postid; ?>" />
			<input required="required" type="hidden" name="type" id="type" value="1" />
			<input type="text" placeholder="Name" name="name" id="name" />
			<input required="required" type="email" placeholder="Email" name="email" id="email" />
			<input required="required" type="text" placeholder="Message" name="message" id="message" />
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