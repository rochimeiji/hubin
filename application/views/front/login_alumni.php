<ul id="myTab" class="nav nav-tabs" style='margin:0px 0px 10px'>
	<li class=""><a x href="front/login/perusahaan">Login Perusahaan</a></li>
	<li class="active"><a x href="front/login/alumni">Login Alumni</a></li>
</ul>
<!-- Form Perusahaan -->
<form method="post">
	<input type='hidden' name='login-perusahaan' value='true' />
	<div class="form-group">
		<label>Username</label>
		<input type="text" name="user" class="form-control" value="<?php echo post('user');?>" placeholder="username">
	</div>
		
	<div class="form-group">
		<label>Password</label>
		<input type="password" name="pass" class="form-control" placeholder="password">
	</div>

	<div class="actions">

		<button type="submit" class="btn btn-primary col-sm-12">Login!</button>

	</div>

</form>