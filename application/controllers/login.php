<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller {

	function __construct(){
		parent::__construct();

	}
	function index(){
		// $data['menu'] = "menu/page";
		$data['page_title'] = "Login Admin";
		$data['content'] = "admin/login";
		$this->load->view('main',$data);
	}
	function logout(){

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */