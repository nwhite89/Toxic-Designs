<div class="sixteen columns">
	<form action="<?php echo base_url(); ?>admin/login" id="loginForm" method="post">
		<label for="username">
			<input name="username" id="username" type="text" placeholder="Username" class="half-width" />
		</label>
		<label for="password">
			<input name="password" id="password" type="password" placeholder="Password" class="half-width" />
		</label>
		<button type="submit">
			Submit
		</button>
	</form>
</div>