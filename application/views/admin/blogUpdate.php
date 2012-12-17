

<div id="post" class="sixteen columns">
	<form action="<?php echo base_url(); ?>admin/blogPostSubmit" method="post" id="newPost">
		<label for=""><input class="full-width" type="text" name="blog_title" placeholder="Blog post title"></label>
		<label for=""><textarea class="full-width" name="blog_post" cols="30" rows="10" placeholder="Blog Content"></textarea></label>
		<label for=""><input class="full-width" type="text" name="blog_date" placeholder="Blog Date"></label>
		<button type="submit">Submit</button>
	</form>
</div>