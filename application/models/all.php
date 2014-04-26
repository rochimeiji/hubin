<?php
class all extends CI_Model{
	//role
	function role($role,$id=""){
		$result = false;
		$sess = $this->session->userdata('role');
		//Role Admin
		if($role=='admin' && $sess=="admin"){
			$result = true;
		}
		//Role Siswa
		if($role=='siswa' && $sess=="siswa" || $this->session->userdata('role')=='admin'){
			if($this->session->userdata('id_user')==$id || $this->session->userdata('role')=='admin'){
				$result = true;
			}
		}
		//Role Login
		if($role=='login' && $this->session->userdata('login')){
			$result = true;
		}
		return $result;
	}
	function setMsg($style,$msg){
		$data = array('style'=>$style,'msg'=>$msg);
		$this->session->set_userdata('msg',$data);
	}
	//Get Message
	function getMsg(){
		$msg = $this->session->userdata('msg');
		if($msg){
			echo "<div class='alert alert-$msg[style]'>$msg[msg]</div>";
			$this->session->unset_userdata('msg','');
		}
	}
}
?>