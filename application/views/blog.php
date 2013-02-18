<div id="blog" class="sixteen columns">
	<p class="pagination"><?php echo $links; ?></p>
	<?php
	foreach ($posts as $post) {
		$postDate = strtotime($post->blog_date);
		$url = base_url().'blog/posts/'.$post->id;
		$postContent = strip_tags($post->blog_post);
	?>
		<div class="clearfix blog-posts">
			<div class="cal-container fl">
				<div class="cal-icon-mon">
					<?php
						echo date('M', $postDate);
					?>
				</div>
				<div class="cal-icon-day">
					<?php
						echo date('d', $postDate);
					?>
				</div>
			</div>
			<div class="fl text">
				<p class="blog-title">
					<a href="<?php echo $url; ?>" title="<?php echo $post->blog_title; ?>">
						<?php
							echo $post->blog_title;
						?>
					</a>
				</p>
				<p class="blog-desc">
					<?php
						if (strlen($postContent) > 225) {

							echo substr($postContent, 0, 225) . '.....';
							?>
							 <a class="readmore" href="<?php echo $url; ?>" title="<?php echo $post->blog_title; ?>">
							 	Read more &raquo;
							 </a>
							<?php
						} else {
							echo $postContent;
						}
					?>
				</p>
			</div>
		</div>
	<?php
	}
	?>
	<p class="pagination"><?php echo $links; ?></p>
</div>