<?php
	function post($array){
		if(isset($_POST[$array])){
			return $_POST[$array];
		}
	}
	function get($array){
		if(isset($_GET[$array])){
			return $_GET[$array];
		}
	}
	function myurl(){
		return $_SERVER['REDIRECT_URL'];
	}
	function push_url($url=""){
		$base = "http://".$_SERVER['HTTP_HOST'].str_replace('index.php','',$_SERVER['SCRIPT_NAME']);
		echo"
		<script>
			//$.ajax({url:'$url?x=1',
			//	complete:function(a){
					window.history.pushState({path:'$url'},'','$url');
					$('body').html(a.responseText);
			//	}
			//});
		</script>";
	}
	function direct($url=''){
		echo"
		<script>
			$('#body').load('$url?x=1');
		</script>
		";
	}
	function img_default($img,$name){
		if(!$img){
			return "assets/default/$name.jpg";
		}else{
			return "assets/$name/$img";
		}
	}
?>