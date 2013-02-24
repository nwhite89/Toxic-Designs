<?php 
if(!isset($post)) {
?>
	<div id="post" class="sixteen columns">
		<form action="<?php echo base_url(); ?>admin/blogPostSubmit" method="post" id="newPost">
			<label for=""><input class="full-width" type="text" name="blog_title" placeholder="Blog post title"></label>
			<label for=""><textarea class="full-width" name="blog_post" cols="30" rows="10" placeholder="Blog Content"></textarea></label>
			<label for=""><input class="full-width" type="text" name="blog_date" placeholder="Blog Date"></label>
			<label for"">
				<select name="published">
					<option value="1">Not Published</option>
					<option value="0">Published</option>
				</select>
			</label>
			<button type="submit">Submit</button>
		</form>
	</div>
<?php
} else {
	foreach ($post->result() as $i => $x)
	{
		echo '<div class="sixteen columns">';
			echo '<form id="devProject" method="post" action="'.base_url().'admin/blogPostSubmit">';
				foreach ($x as $f => $y)
				{
					if ($f == 'id') { echo "<input class='full-width' type='hidden' name='" . $f . "' id='". $f ."' placeholder='".$f."' value='".$y."'/>"; }
					else {
						echo "<label for='". $f ."'>";
							if ($f !='blog_post') { echo "<input class='full-width' type='text' name='" . $f . "' id='". $f ."' placeholder='".$f."' value='".$y."'/>"; }
							else { echo "<textarea class='full-width' name='" . $f . "' id='". $f ."' placeholder='".$f."'>".$y."</textarea>"; } 
						echo "</label>";
					}
				}
				echo '<button type="submit">Submit</button>';
			echo '</form>';
		echo '</div>';
	}
}
?>