<div id="blog" class="sixteen columns">
	<?php
	foreach ($post as $key => $value) {
	?>
		<div class="clearfix">
			<div class="cal-container fl">
				<div class="cal-icon-mon">

				</div>
				<div class="cal-icon-day">12</div>
				<div class="fl">
					<?php
						echo $key;
					?>
				</div>
			</div>
		</div>
	<?php
	}
	?>
	<div class="clearfix">
		<div class="cal-container fl">
			<div class="cal-icon-mon">
				APR
			</div>
			<div class="cal-icon-day">12</div>
		</div>
		<div class="fl">This is the title of the post</div>
	</div>
</div>