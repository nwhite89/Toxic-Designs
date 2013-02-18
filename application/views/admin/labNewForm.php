<div id="post" class="sixteen columns">
	<form action="<?php echo base_url(); ?>admin/labSubmit" method="post" id="newLab">
		<label for=""><input class="full-width" type="text" name="title" placeholder="Lab post title"></label>
		<label for=""><input class="full-width" type="text" name="date" placeholder="Lab Date"></label>
		<label for=""><textarea class="full-width" name="text" cols="30" rows="10" placeholder="Lab Content"></textarea></label>
		<label for=""><input class="full-width" type="text" name="url" placeholder="Lab URL"></label>
		<label for=""><input class="full-width" type="text" name="url_title" placeholder="Lab URL Title"></label>
		<button type="submit">Submit</button>
	</form>
</div>