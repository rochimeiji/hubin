<?php
class alumni extends CI_Model{
	//role
	function get_profil($id){
		$this->db->start_cache();
			$this->db->where('id_siswa',$id);
		$this->db->stop_cache();
			$result = $this->db->get('siswa')->row_array();
		$this->db->flush_cache();
		return $result;
	}
	// Pendidikan Formal
	function get_pndk_formal($id){
		$this->db->where('id_siswa',$id);
		$result = $this->db->get('pendidikan_formal')->result_array();
		return $result;
	}
	// Pendidikan Informal
	function get_pndk_informal($id){
		$this->db->where('id_siswa',$id);
		$result = $this->db->get('pendidikan_informal')->result_array();
		return $result;
	}
	// Pendidikan Informal
	function get_org($id){
		$this->db->where('id_siswa',$id);
		$result = $this->db->get('pengalaman_organisasi')->result_array();
		return $result;
	}
	function aksi($id_siswa){
		// Edit Profil
		if(post('edit-profil')){
			$old_pass = $this->db->get_where('siswa',array('id_siswa'=>$id_siswa))->row_array();
			if(sha1(post('old_pass'))==$old_pass['pass']){
				$data = array(
					'pass' => sha1(post('pass')),
				);
				$this->db->where('id_siswa',$id_siswa);
				$this->db->update('siswa',$data);
				$this->all->setMsg('success','Berhasil edit password');
			}else{
				$this->all->setMsg('error','Old password salah');
			}
		}
		// Edit Biodata
		if(post('edit-biodata')){
			$data = array(
				'nama_siswa' 	=> post('nama_siswa'),
				'tmp_lhr_siswa' => post('tmp_lhr_siswa'),
				'tgl_lhr_siswa' => post('tgl_lhr_siswa'),
				'jk_siswa'		=> post('jk_siswa'),
				'negara_siswa' 	=> post('negara_siswa'),
				'agama_siswa' 	=> post('agama_siswa'),
				'status_siswa' 	=> post('status_siswa'),
				'alamat_siswa' 	=> post('alamat_siswa'),
				'tlp_siswa' 	=> post('tlp_siswa'),
				'email_siswa' 	=> post('email_siswa'),
				'ktp_siswa' 	=> post('ktp_siswa'),
				'id_jurusan' 	=> post('id_jurusan'),
				'id_ta' 		=> post('id_ta'),
			);
			$this->db->where('id_siswa',$id_siswa);
			$this->db->update('siswa',$data);
			$this->all->setMsg('success','Berhail edit biodata');
		}
		// Upload Foto Siswa
		if(isset($_FILES['foto_siswa'])){
			$user = $this->db->get_where('siswa',array('id_siswa'=>$id_siswa))->row_array();
			$foto = $_FILES['foto_siswa'];
			$dir = "assets/foto/";
			$img = time().$foto['name'];
			if($img['foto_siswa']){
				unlink($dir.$user['foto_siswa']);
			}
			move_uploaded_file($foto['tmp_name'], $dir.$img);
			$this->db->where('id_siswa',$id_siswa);
			$this->db->update('siswa',array('foto_siswa'=>$img));
		}
		// Tambah Pendidikan Formal
		if(post('nama_pndk_formal')){
			$data = array(
				'id_siswa' => $id_siswa,
				'awal_pndk_formal' => post("awal_pndk_formal"),
				'akhir_pndk_formal' => post("akhir_pndk_formal"),
				'nama_pndk_formal' => post("nama_pndk_formal"),
			);
			$this->db->insert('pendidikan_formal',$data);
		}
		// Delete pendidikan formal
		if(post('delete')=='pndk_formal'){
			$this->db->where('id_pndk_formal',post('id'));
			$this->db->delete('pendidikan_formal');
		}
		// Tambah Pendidikan Informal
		if(post('nama_pndk_informal')){
			$data = array(
				'id_siswa' => $id_siswa,
				'awal_pndk_informal' => post("awal_pndk_informal"),
				'akhir_pndk_informal' => post("akhir_pndk_informal"),
				'nama_pndk_informal' => post("nama_pndk_informal"),
			);
			$this->db->insert('pendidikan_informal',$data);
		}
		// Delete pendidikan formal
		if(post('delete')=='pndk_informal'){
			$this->db->where('id_pndk_informal',post('id'));
			$this->db->delete('pendidikan_informal');
		}
		// Tambah Pendidikan Informal
		if(post('nama_org')){
			$data = array(
				'id_siswa' => $id_siswa,
				'awal_org' => post("awal_org"),
				'akhir_org' => post("akhir_org"),
				'posisi_org' => post("posisi_org"),
				'nama_org' => post("nama_org"),
			);
			$this->db->insert('pengalaman_organisasi',$data);
		}
	}
}
?>