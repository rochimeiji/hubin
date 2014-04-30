<script src='assets/js/validasi.js' ></script>

<div class='col-md-6 pull-right'>
	<legend>
		<h2>Ketentuan Daftar</h2>
	</legend>
	<blockquote>
		 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet 
		 dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit 
		 lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit 
		 esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero 
	</blockquote>
</div>
<div class='col-md-6'>
	<legend>
		<h2>Daftar Alumni</h2>
	</legend>
	<!-- Form Perusahaan -->
	<form method="post" id='user'>
		<?php $this->all->getMsg();?>
		<input type='hidden' name='daftar' value='true' />

		<div class="form-group">
			<label>Username</label>
			<input type="text" name="user" class="form-control" value="<?php echo post('user');?>" placeholder="Username">
		</div>
			
		<div class="form-group">
			<label>Password</label>
			<input type="password" id='pass' name="pass" class="form-control" placeholder="Password">
		</div>

		<div class="form-group">
			<label>Retype Password</label>
			<input type="password" name="re_pass" class="form-control" placeholder="Retype Password">
		</div>

		<div class="form-group">
			<label>Nama Lengkap</label>
			<input type="text" name="nama_siswa" class="form-control" value="<?php echo post('nama_siswa');?>" placeholder="Nama">
		</div>

		<div class="form-group">
			<label>Email</label>
			<input type="email" name="email_siswa" class="form-control" value="<?php echo post('email_siswa');?>" placeholder="Email">
		</div>

		<div class="form-group">
			<label>Jurusan</label>
		<?php
			foreach($this->db->get('jurusan')->result_array() as $s){
				$sel_jurusan[$s['id_jurusan']] = $s['nama_jurusan'];
			} 
			echo form_dropdown("id_jurusan",$sel_jurusan,post('id_jurusan'),"class='form-control'");
		?>
		</div>

		<div class="form-group">
			<label>Lulusan</label>
		<?php
			foreach($this->db->get('ta')->result_array() as $s){
				$sel_ta[$s['id_ta']] = $s['lulusan'];
			} 
			echo form_dropdown("id_ta",$sel_ta,post('id_ta'),"class='form-control'");
		?>
		</div>

		<div class="actions">
			<button type="submit" class="btn btn-primary col-sm-12">Daftar!</button>
		</div>

	</form>
</div>