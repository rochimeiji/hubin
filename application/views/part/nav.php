<!--start: Navbar -->
<nav class="navbar navbar-default" role="navigation">		
	<!--start: Container -->
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
    	<div class="navbar-header">
      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navigation">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      		</button>
      		<a class="navbar-brand" href="index"><i class="fa fa-code"></i> Sma<span>rt</span>.</a>
    	</div>
	<?php
		if($this->session->userdata('role') == 'admin'){
	?>
		<!-- Collect the nav links, forms, and other content for toggling -->
    	<div class="collapse navbar-collapse" id="main-navigation">
      		<ul class="nav navbar-right navbar-nav">
      			<li ><a x href="admin">Dashboard</a></li>
      			<li ><a x href="admin/siswa">Siswa</a></li>
      			<li ><a x href="admin/perusahaan">Perusahaan</a></li>
      			<li ><a x href="login/logout">Logout</a></li>
    		</ul>
    	</div><!-- /.navbar-collapse -->		
	</div>
	<?php
		}else{
	?>
    	<!-- Collect the nav links, forms, and other content for toggling -->
    	<div class="collapse navbar-collapse" id="main-navigation">
      		<ul class="nav navbar-right navbar-nav">
      			<li ><a x href="">Home</a></li>
				<li class="dropdown">
        			<a pointer class="dropdown-toggle" data-toggle="dropdown">Prakerin<b class="caret"></b></a>
        			<ul class="dropdown-menu">
          				<li><a x href="social-icons">SURTA</a></li>
						<li><a x href="fontawesome">RPL</a></li>
						<li><a x href="halflings">GEOTA</a></li>
						<li><a x href="glyphicons">GARMEN</a></li>
        			</ul>
      			</li>
      			<li ><a x href="front/about">Loker</a></li>
      			<li ><a x href="front/alumni">Alumni</a></li>
      			<li ><a x href="front/about">Gallery</a></li>
      			<li ><a x href="front/login/perusahaan">Login</a></li>
    		</ul>
    	</div><!-- /.navbar-collapse -->		
	</div>
	<?php } ?>
	<!--/.container-->			
</nav>
<!--end: Navbar -->