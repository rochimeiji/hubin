<script src='assets/js/validasi.js' ></script>
<script src='assets/js/page/alumni.js' ></script>
<?php $this->all->getMsg();?>
<div class='col-md-6'>
	<!-- Form Profil -->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Profil</h3>
	    </div>
	    <div class="panel-body">
	    	<form id='user' method="post">
	    	<input type='hidden' name='edit-profil' value='1' />
			<div class="form-group">
				<label>Username</label>
				<input type="text" name="user" class="form-control" value="<?php echo $get_profil['user'];?>" placeholder="Username" disabled>
			</div>
			<div class="form-group">
				<label>Old Password</label>
				<input type="password" name="old_pass" class="form-control" placeholder="Old Password">
			</div>
			<div class="form-group">
				<label>Password</label>
				<input type="password" name="pass" class="form-control" placeholder="Password" id='pass'>
			</div>
			<div class="form-group">
				<label>Retype Password</label>
				<input type="password" name="re_pass" class="form-control" placeholder="Retype Password">
			</div>
			<div class="actions">
				<input type="submit" value="Edit!" class="btn btn-primary col-sm-12">
			</div>
			</form>
	    </div>
  	</div>
	<!-- Form Pendidikan Formal-->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Pendidikan Formal <a pointer class='label label-success' toggle='pndk_formal'>Tambah</a></h3>
	    </div>
	    <div class="panel-body">
			<div class="form-group">
			<table class='table table-striped'>
			<?php foreach($this->alumni->get_pndk_formal($id_user) as $pndk_formal){ ?>
				<tr>
					<td style='max-width:150px'>Tahun <?php echo $pndk_formal['awal_pndk_formal']."-".$pndk_formal['akhir_pndk_formal'];?></td>
					<td>: <?php echo $pndk_formal['nama_pndk_formal']?></td>
					<td><a rel-id='<?php echo $pndk_formal['id_pndk_formal'];?>' delete='pndk_formal' class='close'>×</a></td>
				</tr>
			<?php } ?>
			</table>
	    	<form id='pendidikan-formal' method='post' target-toggle='pndk_formal'>
				<div class="form-group col-md-3">
					<label>Awal Tahun</label>
					<input type="text" name="awal_pndk_formal" class="form-control" placeholder="Awal">
				</div>
				<div class="form-group col-md-3">
					<label>Akhir Tahun</label>
					<input type="text" name="akhir_pndk_formal" class="form-control" placeholder="Akhir">
				</div>
				<div class='form-group col-md-12'>
	    			<label>Nama Pendidikan Formal</label>
					<input type="text" name="nama_pndk_formal" class="form-control" placeholder="Pendidikan Formal">
				</div>				
				<div class="actions" style='margin:10px 0px;'>
					<input type="submit" name='add-pndk-formal' value="Tambah Pendidikan Formal" class="btn btn-primary col-sm-12">
				</div>
			</form>
			</div>
	    </div>
  	</div>
	<!-- Form Pendidikan Informal-->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Pendidikan Informal <a pointer class='label label-success' toggle='pndk_informal'>Tambah</a></h3>
	    </div>
	    <div class="panel-body">
			<div class="form-group">
			<table class='table table-striped'>
			<?php foreach($this->alumni->get_pndk_informal($id_user) as $pndk_informal){ ?>
				<tr>
					<td style='max-width:150px'>Tahun <?php echo $pndk_informal['awal_pndk_informal']."-".$pndk_informal['akhir_pndk_informal'];?></td>
					<td>: <?php echo $pndk_informal['nama_pndk_informal']?></td>
					<td><a rel-id='<?php echo $pndk_informal['id_pndk_informal'];?>' delete='pndk_informal' class='close'>×</a></td>
				</tr>
			<?php } ?>
			</table>
	    	<form id='pendidikan-informal' method='post' target-toggle='pndk_informal'>
				<div class="form-group col-md-3">
					<label>Awal Tahun</label>
					<input type="text" name="awal_pndk_informal" class="form-control" placeholder="Awal">
				</div>
				<div class="form-group col-md-3">
					<label>Akhir Tahun</label>
					<input type="text" name="akhir_pndk_informal" class="form-control" placeholder="Akhir">
				</div>
				<div class='form-group col-md-12'>
	    			<label>Nama Pendidikan Informal</label>
					<input type="text" name="nama_pndk_informal" class="form-control" placeholder="Pendidikan Informal">
				</div>
				<div class="actions" style='margin:10px 0px;'>
					<input type="submit" name='add-pndk-formal' value="Tambah Pendidikan Informal" class="btn btn-primary col-sm-12">
				</div>
			</form>
			</div>
	    </div>
  	</div>
	<!-- Form Pengalaman Organisasi-->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Pengalaman Organisasi <a pointer class='label label-success' toggle='pengalaman_organisasi'>Tambah</a></h3>
	    </div>
	    <div class="panel-body">
			<div class="form-group">
			<table class='table table-striped'>
			<?php foreach($this->alumni->get_org($id_user) as $row_org){ ?>
				<tr>
					<td style='max-width:150px'>Tahun <?php echo $row_org['awal_org']."-".$row_org['akhir_org'];?></td>
					<td>: <?php echo $row_org['posisi_org']." di ".$row_org['nama_org']?></td>
					<td><a rel-id='<?php echo $row_org['id_org'];?>' delete='pengalaman_organisasi' class='close'>×</a></td>
				</tr>
			<?php } ?>
			</table>
	    	<form id='pengalaman-organisasi' method='post' target-toggle='pengalaman_organisasi'>
				<div class="form-group col-md-3">
					<label>Awal Tahun</label>
					<input type="text" name="awal_org" class="form-control" placeholder="Awal">
				</div>
				<div class="form-group col-md-3">
					<label>Akhir Tahun</label>
					<input type="text" name="akhir_org" class="form-control" placeholder="Akhir">
				</div>
				<div class="form-group col-md-6">
					<label>Posisi</label>
					<input type="text" name="posisi_org" class="form-control" placeholder="Posisi">
				</div>
				<div class="form-group col-md-12">
					<label>Nama Organisasi</label>
					<input type="text" name="nama_org" class="form-control" placeholder="Organisasi">
				</div>
					<div class='cl'></div>
				<div class="actions" style='margin:10px 0px;'>
					<input type="submit" name='add-pndk-formal' value="Tambah Pengalaman Organisasi" class="btn btn-primary col-sm-12">
				</div>
			</form>
			</div>
	    </div>
  	</div>
</div>
<div class='col-md-6'>
	<form id='biodata' method='post' enctype="multipart/form-data">
	<!-- Form Foto Siswa -->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Foto</h3>
	    </div>
	    <div class='panel-body'>
		<div class="form-group">
			<div class='col-md-3'>
				<label pointer for='foto_siswa'>
					<img src='<?php echo img_default($get_profil['foto_siswa'],'foto');?>' class='foto' />
				</label>
			</div>
			<div class="col-md-9">
				<input id='foto_siswa' type="file" name="foto_siswa" class="form-control" accept="image/*" title="Upload Foto">
				<a style='margin:10px 0px;' name='upload-foto' class='btn btn-primary' disabled>Upload Foto</a>
				<div style='margin:10px 0px;' class="progress" hidden>
			        <div class="progress-bar" role="progressbar" style="width:0%;"></div>
			    </div>
			</div>
		</div>
	    </div>
	</div>
	<!-- Form Biodata -->
	<div class="panel panel-primary">
    	<div class="panel-heading title">
	      <h3 class="panel-title">Biodata</h3>
	    </div>
	    <div class='panel-body'>
	    	<input type='hidden' name='edit-biodata' value='1' />
			<div class="form-group">
				<label>Nama Lengkap</label>
				<input type="text" name="nama_siswa" class="form-control" value="<?php echo $get_profil['nama_siswa'];?>" placeholder="Nama">
			</div>
			<div class="form-group">
				<label>Tempat Lahir</label>
				<input type="text" name="tmp_lhr_siswa" class="form-control" value="<?php echo $get_profil['tmp_lhr_siswa'];?>" placeholder="Tempat Lahir">
			</div>
			<div class="form-group">
				<label>Tanggal Lahir</label>
				<input type="date" name="tgl_lhr_siswa" class="form-control" value="<?php echo $get_profil['tgl_lhr_siswa'];?>" placeholder="Tempat Lahir">
			</div>
			<div class="form-group">
				<label>Jenis Kelamin</label>
			<?php
				$sel_jk = array('Laki-laki'=>'Laki-laki','Perempuan'=>'Perempuan');
				echo form_dropdown("jk_siswa",$sel_jk,$get_profil['jk_siswa'],"class='form-control'");
			?>
			</div>
			<div class="form-group">
				<label>Kewarganegaraan</label>
				<input type="text" name="negara_siswa" class="form-control" value="<?php echo $get_profil['negara_siswa'];?>" placeholder="Kewarganegaraan">
			</div>
			<div class="form-group">
				<label>Agama</label>
			<?php
				foreach($this->db->get_where('kategori',array('kategori'=>'agama'))->result_array() as $row){
					$sel_agama[$row['value_kategori']] = $row['value_kategori'];
				}
				echo form_dropdown("agama_siswa",$sel_agama,$get_profil['agama_siswa'],"class='form-control'");
			?>
			</div>
			<div class="form-group">
				<label>Status</label>
			<?php
				$this->db->flush_cache();
				foreach($this->db->get_where('kategori',array('kategori'=>'status'))->result_array() as $row2){
					$sel_status[$row2['value_kategori']] = $row2['value_kategori'];
				}
				echo form_dropdown("status_siswa",$sel_status,$get_profil['status_siswa'],"class='form-control'");
			?>
			</div>
			<div class="form-group">
				<label>Alamat</label>
				<textarea name='alamat_siswa' class='form-control' placeholder='Alamat'><?php echo $get_profil['alamat_siswa'];?></textarea>
			</div>
			<div class="form-group">
				<label>No Telepon</label>
				<input type="text" name="tlp_siswa" class="form-control" value="<?php echo $get_profil['tlp_siswa'];?>" placeholder="No Telepon">
			</div>
			<div class="form-group">
				<label>Email</label>
				<input type="email" name="email_siswa" class="form-control" value="<?php echo $get_profil['email_siswa'];?>" placeholder="Email">
			</div>
			<div class="form-group">
				<label>No KTP</label>
				<input type="text" name="ktp_siswa" class="form-control" value="<?php echo $get_profil['ktp_siswa'];?>" placeholder="No KTP">
			</div>
			<div class="form-group">
				<label>Jurusan</label>
			<?php
				foreach($this->db->get('jurusan')->result_array() as $s){
					$sel_jurusan[$s['id_jurusan']] = $s['nama_jurusan'];
				} 
				echo form_dropdown("id_jurusan",$sel_jurusan,$get_profil['id_jurusan'],"class='form-control'");
			?>
			</div>
			<div class="form-group">
				<label>Tahun Ajaran</label>
			<?php
				foreach($this->db->get('ta')->result_array() as $s){
					$sel_ta[$s['id_ta']] = $s['nama_ta'];
				} 
				echo form_dropdown("id_ta",$sel_ta,$get_profil['id_ta'],"class='form-control'");
			?>
			</div>
			<div class="actions">
				<input type="submit" value='Edit Biodata!' class="btn btn-primary col-md-12">
			</div>
	    </div>
  	</div>
	</form>
</div>