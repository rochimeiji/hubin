<?php
// Ajax get x
if(!get('x')){
	$this->load->view('part/head');
}
// Ajax get x = content
if(get('x')=="content"){
	if(isset($content)){
		$this->load->view($controller."/".$content);
	}
// Ajax get x = menu
}elseif(get('x')=="menu"){
	if(isset($menu)){
		$this->load->view($menu);
	}
}else{
	echo "
	<div id='body'>";
	$this->load->view('part/nav');
	if(isset($page_title)){
		$this->load->view('part/page_title');
	}
	echo "
	<div class='container'>
	<hr>
	<div class='row'>";
	if(isset($menu)){
	echo"	<div id='menu' class='col-md-3'>";
		$this->load->view($menu);
		echo "
			</div>
			<div id='content' class='col-md-9'>
		";
	}else{
		echo "
			<div id='content' class='col-md-12'>
		";
	}
	if(isset($content)){
		$this->load->view($content);
	}
	echo"
		</div>
	</div>";
	echo"
	</div>
	</div>
	";
}
// Ajax get x true
if(!get('x')){
	// $this->load->view('part/client');
	$this->load->view('part/footer');
}
?>