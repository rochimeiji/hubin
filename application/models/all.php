<?php
class all extends CI_Model{
	//role
	function role($role,$id=""){
		$result = false;
		$sess = $this->session->userdata('role');
		$login = $this->session->userdata('login');
		$id_user = $this->session->userdata('id_user');
		//Role with $id
		if($id){
			if($role==$sess||$sess=='admin'||$sess=='user'){
				$result = true;
			}elseif($role=='login'&&$login==true){
				$result = true;
			}
		}
		//Role without $id
		if($role==$sess||$sess=='admin'||$sess=='user'){
			$result = true;
		}elseif($role=='login'&&$login==true){
			$result = true;
		}
		return $result;
	}
	function cek_login($role=''){
		$result = false;
		$sess = $this->session->userdata('role');
		$login = $this->session->userdata('login');
		if($role){
			if(is_array($role)){
				foreach($role as $role){
					if($sess==$role){
						$result = true;
					}
				}
			}else{
				if($role==$sess){
					$result = true;
				}
			}
		}else{
			if($login==true){
				$result = true;
			}
		}
		if($result==false){
			redirect();
		}
	}
	function setMsg($style,$msg){
		$data = array('style'=>$style,'msg'=>$msg);
		$this->session->set_userdata('msg',$data);
	}
	//Get Message
	function getMsg(){
		$msg = $this->session->userdata('msg');
		if($msg){
			echo "<div class='alert alert-$msg[style]'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>$msg[msg]</div>";
			$this->session->unset_userdata('msg','');
		}
	}
}
?>