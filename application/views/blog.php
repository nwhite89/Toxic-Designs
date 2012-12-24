<div id="blog" class="sixteen columns">
	<p class="pagination"><?php echo $links; ?></p>
	<?php
	foreach ($posts as $post) {
		$postDate = strtotime($post->blog_date);
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
					<a href="<?php echo base_url(); ?>blog/posts/<?php echo $post->id; ?>" title="<?php echo $post->blog_title; ?>">
						<?php
							echo $post->blog_title;
						?>
					</a>
				</p>
				<p class="blog-desc">
					<?php
						if (strlen($post->blog_post) > 255) {
							echo substr($post->blog_post, 0, 255) . '.....';
							?>
							 <a class="readmore" href="<?php echo base_url(); ?>blog/posts/<?php echo $post->id; ?>" title="<?php echo $post->blog_title; ?>">
							 	Read more &raquo;
							 </a>
							<?php
						} else {
							echo $post->blog_post;
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