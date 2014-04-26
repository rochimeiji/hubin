<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class front extends CI_Controller {

	function __construct(){
		parent::__construct();

	}
	function index(){
		// $data['menu'] = "menu/page";
		$data['content'] = "front/index";
		$this->load->view('main',$data);
	}
	function login(){
		$role = $this->uri->segment(3);
		$data['page_title'] = "Login ".$role;
		$data['content'] = "front/login_".$role;
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