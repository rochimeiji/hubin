<?php
class alumni extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->load->library('pagination');
	}
	function get_id_siswa($user){
		$row = $this->db->get_where('siswa',array('user'=>$user))->row_array();
		return $row['id_siswa'];
	}
	// Get Almuni
	function get_alumni(){
		$this->db->start_cache();
			// Join
			$this->db->join('jurusan','jurusan.id_jurusan=siswa.id_jurusan');
			$this->db->join('ta','ta.id_ta=siswa.id_ta');
			// Where
			if(post('filter')){
				$this->db->where(array('siswa.id_ta'=>post('id_ta'),'siswa.id_jurusan'=>post('id_jurusan')));
			}
			$this->db->order_by('siswa.id_ta','asc');
			$this->db->from('siswa');
		$this->db->stop_cache();
			// Pagination
			$config['base_url'] = 'front/alumni/';
			$config['uri_segment'] = 3;
			$config['total_rows'] = $this->db->count_all_results();
			$config['per_page'] = 2;
			$this->pagination->initialize($config);
			$result = $this->db->get()->result_array();
		$this->db->flush_cache();
		return $result;
	}
	// get Profil
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
		$this->db->order_by('id_pndk_formal');
		$result = $this->db->get('pendidikan_formal')->result_array();
		return $result;
	}
	// Pendidikan Informal
	function get_pndk_informal($id){
		$this->db->where('id_siswa',$id);
		$this->db->order_by('id_pndk_informal');
		$result = $this->db->get('pendidikan_informal')->result_array();
		return $result;
	}
	// Pengalaman Organisasi
	function get_org($id){
		$this->db->where('id_siswa',$id);
		$this->db->order_by('id_org');
		$result = $this->db->get('pengalaman_organisasi')->result_array();
		return $result;
	}
	// Keahlian siswa
	function get_keahlian($id){
		$this->db->where('id_siswa',$id);
		$this->db->order_by('id_keahlian');
		$result = $this->db->get('keahlian_siswa')->result_array();
		return $result;
	}
	// Prestasi siswa
	function get_prestasi($id){
		$this->db->where('id_siswa',$id);
		$this->db->order_by('id_prestasi');
		$result = $this->db->get('prestasi_siswa')->result_array();
		return $result;
	}
	// Pengalaman Kerja
	function get_kerja($id){
		$this->db->where('id_siswa',$id);
		$this->db->order_by('id_kerja');
		$result = $this->db->get('pengalaman_kerja')->result_array();
		return $result;
	}
	// Portofolio Siswa
	function get_portofolio($id){
		$this->db->where(array('id_user'=>$id,'role_gallery'=>'portofolio'));
		$this->db->order_by('id_gallery');
		$result = $this->db->get('gallery')->result_array();
		return $result;
	}
	// Aksi Almuni
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
		// Upload Portofolio Siswa
		if(isset($_FILES['img_portofolio'])){
			foreach ($_FILES['img_portofolio']['name'] as $k => $v) {
				$foto = $_FILES['img_portofolio'];
				$dir = "assets/portofolio/";
				$img = time().$foto['name'][$k];
				move_uploaded_file($foto['tmp_name'][$k], $dir.$img);
				$data = array(
					'id_user' => $id_siswa,
					'title_gallery' => post('title_portofolio'),
					'img_gallery' => $img,
					'role_gallery' => 'portofolio',
				);
				$this->db->insert('gallery',$data);
			}
		}
		// Delete pendidikan Formal
		if(post('delete')=='portofolio'){
			$img = $this->db->get_where('gallery',array('id_gallery'=>post('id')))->row_array();
			unlink('assets/portofolio/'.$img['img_gallery']);
			$this->db->where(array('id_gallery'=>post('id'),'role_gallery'=>'portofolio'));
			$this->db->delete('gallery');
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
		// Delete pendidikan Formal
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
		// Delete pendidikan Informal
		if(post('delete')=='pndk_informal'){
			$this->db->where('id_pndk_informal',post('id'));
			$this->db->delete('pendidikan_informal');
		}
		// Tambah Pengalaman Organisasi
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
		// Delete Pengalaman Organisasi
		if(post('delete')=='pengalaman_organisasi'){
			$this->db->where('id_org',post('id'));
			$this->db->delete('pengalaman_organisasi');
		}
		// Tambah Keahlian Siswa
		if(post('ket_keahlian')){
			$data = array(
				'id_siswa' => $id_siswa,
				'ket_keahlian' => post("ket_keahlian"),
			);
			$this->db->insert('keahlian_siswa',$data);
		}
		// Delete Keahlian Siswa
		if(post('delete')=='keahlian_siswa'){
			$this->db->where('id_keahlian',post('id'));
			$this->db->delete('keahlian_siswa');
		}
		// Tambah Prestasi Siswa
		if(post('prestasi')){
			$data = array(
				'id_siswa' => $id_siswa,
				'prestasi' => post("prestasi"),
			);
			$this->db->insert('prestasi_siswa',$data);
		}
		// Delete Prestasi Siswa
		if(post('delete')=='prestasi_siswa'){
			$this->db->where('id_prestasi',post('id'));
			$this->db->delete('prestasi_siswa');
		}
		// Tambah Pengalaman Kerja
		if(post('pengalaman_kerja')){
			$data = array(
				'id_siswa' => $id_siswa,
				'pengalaman_kerja' => post("pengalaman_kerja"),
			);
			$this->db->insert('pengalaman_kerja',$data);
		}
		// Delete Pengalaman Kerja
		if(post('delete')=='pengalaman_kerja'){
			$this->db->where('id_kerja',post('id'));
			$this->db->delete('pengalaman_kerja');
		}
	}
}
?>