<form method="post">
	<input type='hidden' name='login-perusahaan' value='true' />
	<div class="form-group">
		<label>Tahun Ajaran</label>
<?php
	foreach($this->db->get('ta')->result_array() as $s){
		$sel_ta[$s['nama_ta']] = $s['nama_ta'];
	} 
	echo form_dropdown("id_ta",$sel_ta,post('id_ta'),"class='form-control'");
?>
	</div>
		
	<div class="form-group">
		<label>Jurusan</label>
<?php
	foreach($this->db->get('jurusan')->result_array() as $s){
		$sel_jurusan[$s['nama_jurusan']] = $s['nama_jurusan'];
	} 
	echo form_dropdown("id_jurusan",$sel_jurusan,post('id_jurusan'),"class='form-control'");
?>
	</div>

	<div class="actions">

		<button type="submit" class="btn btn-primary col-sm-12">Filter !</button>

	</div>

</form>