<?php
  header("Content-type: text/css");
  $jurusan = $this->session->userdata('jurusan');
?>
@import "<?php echo base_url();?>assets/css/bootstrap.min.css";
@import "<?php echo base_url();?>assets/css/style.min.css";
@import "<?php echo base_url();?>assets/css/parallax-slider.css";

/*Load*/
.cl{
	clear:both;
}
/*Loading*/
[pointer]{
	cursor:pointer;
}
[loading]{
  display:none;
  position:fixed;
  top: 50%;
  left: 50%;
  margin-top: -50px;
  margin-left: -50px;
  z-index:9999;
}
[loading] img{
  width:100px;
  height:100px;
}
[hide]{
  position:absolute;
  visibility:hidden;
}
/*Line SMK*/
.line-smk{
	height:5px;
}
.line-smk div{
	height:5px;
	width:25%;
	float:left;
}
.line-surta{background:#0e7025;}
.line-rpl{background:#3598db;}
.line-geota{background:#f39c11;}
.line-garmen{background:#8c47a4;}
/*Style MIN*/
#page-title{
  margin:0px;
  background:none;
}
/*label error*/
label.error{
	margin:5px 0px 0px;
	color:red;
}
.tahun-pndk-formal input{
  width:40%;
  float:left;
  margin-right:5%;
}
.foto{
  width:100px;
  height:120px;
  border:1px solid #ccc;
}