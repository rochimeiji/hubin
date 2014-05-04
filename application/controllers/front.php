<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class front extends CI_Controller {

	function __construct(){
		parent::__construct();

	}
	function style(){
		$this->load->view('style');
	}
	function index(){
		// $data['menu'] = "menu/page";
		$data['content'] = "front/index";
		$this->load->view('main',$data);
	}
	function login(){
		$this->load->model('login');
		$role = $this->uri->segment(3);
		$this->login->aksi();
		$data['page_title'] = "Login ".$role;
		$data['content'] = "front/login_".$role;
		$this->load->view('main',$data);
	}
	function daftar(){
		$this->load->model('daftar');
		$role = $this->uri->segment(3);
		$this->daftar->aksi($role);
		$data['page_title'] = "Daftar ".$role;
		$data['content'] = "front/daftar_".$role;
		$this->load->view('main',$data);
	}
	// Alumni
	function alumni(){
		$this->load->model('alumni');
		$data['get_alumni'] = $this->alumni->get_alumni();
		$data['page_title'] = "Data Alumni";
		$data['menu'] = "menu/menu_alumni";
		$data['content'] = "front/alumni";
		$this->load->view('main',$data);
	}
	function profil_alumni(){
		$this->load->model('alumni');
		$this->all->cek_login();
		$id_user = $this->session->userdata('id_siswa');
		$this->alumni->aksi($id_user);
		$data['get_profil'] = $this->alumni->get_profil($id_user);
		$data['page_title'] = "Profil Dan Curriculum Vitae";
		$data['id_user'] = $id_user;
		$data['page_titel'] = "My Profil";
		$data['content'] = "front/profil_alumni";
		$this->load->view('main',$data);
	}
	function cv_alumni(){
		$this->load->model('alumni');
		$user = $this->uri->segment(3);
		$id_user = $this->alumni->get_id_siswa($user);
		$data['get_profil'] = $this->alumni->get_profil($id_user);
		$data['page_title'] = "Daftar Riwayat Hidup";
		$data['id_user'] = $id_user;
		$data['page_titel'] = "My Profil";
		$data['content'] = "front/cv_alumni";
		$this->load->view('main',$data);
	}
	function about(){
		// $data['menu'] = "menu/page";
		$data['content'] = "front/about";
		$this->load->view('main',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */