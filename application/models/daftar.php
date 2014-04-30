<?php
class daftar extends CI_Model{
	function aksi($role){
		if($role=='alumni'&&post('daftar')){
			$data = array(
				'user' => post('user'),
				'pass' => sha1(post('pass')),
				'nama_siswa' => post('nama_siswa'),
				'email_siswa' => post('email_siswa'),
				'id_jurusan' => post('id_jurusan'),
				'id_ta' => post('id_ta'),
			);
			$this->db->insert('siswa',$data);
			$this->all->setMsg('success','Daftar alumni berhasil, aktifasi akan diaktifkan oleh admin');
			$_POST = '';
		}
		if($role=='perusahaan'&&post('daftar')){
			$row = $this->db->get_where('perusahaan',array('user'=>post('user'),'pass'=>sha1(post('pass'))))->row_array();
			if($row){
				if($row['status']=='active'){
					$data = array(
						'id_perusahaan' => $row['id_perusahaan'],
						'login' => true,
						'role' => 'perusahaan'
					);
					$this->session->set_userdata($data);
					direct();
				}else{
					$this->all->setMsg('error','Username Tidak Aktif');
				}
			}else{
				$this->all->setMsg('error','Username Dan Password Salah');
			}
		}
	}
	function logout(){
		$data = array(
			'id_user' => '',
			'login' => '',
			'role' => ''
		);
		$this->session->uset_userdata($data);
	}
}
?>