<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class admin extends CI_Controller {

	function __construct(){
		parent::__construct();
		if($this->session->userdata('role') != 'admin'){
			redirect('login');
		}
	}
	function index(){
		// $data['menu'] = "menu/page";
		$data['page_title'] = "Dashboard";
		// $data['content'] = "admin/index";
		$this->load->view('main',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */