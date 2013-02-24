<?php
if(isset($project))
{
	foreach ($project->result() as $i => $x)
	{
		echo '<div class="sixteen columns">';
			echo '<form id="devProject" method="post" action="'.base_url().'admin/updateProject">';
				foreach ($x as $f => $y)
				{
					if ($f == 'id') { echo "<input class='full-width' type='hidden' name='" . $f . "' id='". $f ."' placeholder='".$f."' value='".$y."'/>"; }
					else if ($f == 'published') {
						echo '<label for"">
							<select name="published">
								<option value="1"';
								if ($y == 1) { echo ' selected'; }
								echo '>Not Published</option>
								<option value="0"';
								if ($y == 0) { echo ' selected'; }
								echo '>Published</option>
							</select>
						</label>';
					}
					else {
						echo "<label for='". $f ."'>";
							if ($f !='text') { echo "<input class='full-width' type='text' name='" . $f . "' id='". $f ."' placeholder='".$f."' value='".$y."'/>"; }
							else { echo "<textarea class='full-width' name='" . $f . "' id='". $f ."' placeholder='".$f."'>".$y."</textarea>"; } 
						echo "</label>";
					}
				}
				echo '<button type="submit">Submit</button>';
			echo '</form>';
		echo '</div>';
	}
}
else 
{
	?>
	<div class="sixteen columns">
		<form action="<?php echo base_url() ?>admin/newProject" id="devProject" method="post">
			<label for="title"><input type="text" class="full-width" name="title" id="title" placeholder="Title of Project"></label>
			<label for="thumbnail"><input type="text" class="full-width" name="thumbnail" id="thumbnail" placeholder="Thumbnail URL"></label>
			<label for="image"><input type="text" class="full-width" name="image" id="image" placeholder="Image URL"></label>
			<label for="date"><input type="text" class="full-width" name="date" id="date" placeholder="Date of Project"></label>
			<label for="text"><textarea type="text" class="full-width" name="text" id="text" placeholder="Text of project"></textarea></label>
			<label for="url"><input type="text" class="full-width" name="url" id="url" placeholder="URL of site"></label>
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
}

?>