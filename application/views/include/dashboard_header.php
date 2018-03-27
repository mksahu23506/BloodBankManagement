<?php
$title = '';
switch ($this->session->loginData['Role_Id']) {
	case 1:
	$title = "Admin | Dashboard";
	break;

	case 2:
	$title = "Hospital | Dashboard";
	break;

	case 3:
	$title = "User | Dashboard";
	break;

	default:
	$title = "Dashboard";
	break;
  // }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="<?php echo site_url('common/dashboard/'); ?>../assets/img/apple-icon.png">
	<!-- <link rel="icon" type="image/png" href="../assets/img/favicon.png"> -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title><?php echo $title; ?></title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<!--     Fonts and icons     -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
	<!-- CSS Files -->
	<link href="<?php echo site_url('common/'); ?>css/material-design-iconic-font.css" rel="stylesheet">
	<link href="<?php echo site_url('common/dashboard/'); ?>assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo site_url('common/dashboard/'); ?>assets/css/now-ui-dashboard.css?v=1.0.1" rel="stylesheet" />
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="<?php echo site_url('common/dashboard/'); ?>assets/demo/demo.css" rel="stylesheet" />
	<link href="<?php echo site_url('common/'); ?>vendor/jquery/jquery.bootgrid.css" rel="stylesheet">
	<script src="<?php echo site_url('common/'); ?>vendor/jquery/jquery.min.js"></script>
	<script src="<?php echo site_url('common/'); ?>vendor/jquery/jquery.bootgrid.fa.js"></script>
	<script src="<?php echo site_url('common/'); ?>vendor/jquery/jquery.bootgrid.js"></script>


</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
      -->
      <div class="logo">
      	<div>Welcome</div>
      	<?php echo strtoupper($this->session->loginData['Name']); ?>
      </div>
      <div class="sidebar-wrapper">
      	<ul class="nav">
      		<li class="active">
      			<a href="#">
      				<i class="now-ui-icons design_app"></i>
      				<p>Dashboard</p>
      			</a>
      		</li>
      		<li>
      			<a href="">
      				<i class="now-ui-icons ui-1_bell-53"></i>
      				<p>Notifications</p>
      			</a>
      		</li>
      		<li>
      			<a href="">
      				<i class="now-ui-icons users_single-02"></i>
      				<p>Profile</p>
      			</a>
      		</li>
      		<li>
      		</ul>
      	</div>
      </div>
      <div class="main-panel">
      	<!-- Navbar -->
      	<nav class="navbar navbar-expand-lg  navbar-absolute bg-primary fixed-top">
      		<div class="container-fluid">
      			<div class="navbar-wrapper">
      				<div class="navbar-toggle">
      					<button type="button" class="navbar-toggler">
      						<span class="navbar-toggler-bar bar1"></span>
      						<span class="navbar-toggler-bar bar2"></span>
      						<span class="navbar-toggler-bar bar3"></span>
      					</button>
      				</div>
      				<a class="navbar-brand" href=""><?php echo ($this->session->loginData['Role_Id'] == 3 ?$this->session->loginData['Blood_Type'] : 'Dashboard'); ?></a>
      			</div>
      			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
      				<span class="navbar-toggler-bar navbar-kebab"></span>
      				<span class="navbar-toggler-bar navbar-kebab"></span>
      				<span class="navbar-toggler-bar navbar-kebab"></span>
      			</button>
      			<div class="collapse navbar-collapse justify-content-end" id="navigation">
      				<ul class="navbar-nav">
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo site_url('dashboard/logout'); ?>">
      							<i class="now-ui-icons users_single-02"></i>
      							<p>
      								<span class="d-lg-none d-md-block">Account</span>
      							</p>
      						</a>
      					</li>
      				</ul>
      			</div>
      		</div>
      	</nav><br><br><br><br>
      	<div class="wrapper ">
      		<div class="sidebar" data-color="orange">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
      -->
      <div class="logo">
      	<?php echo strtoupper($this->session->loginData['Name']); ?>
      </div>
      <div class="sidebar-wrapper">
      	<ul class="nav">
      		<li class="active">
      			<?php if($this->session->loginData['Role_Id'] == 2){ ?>
      			<a href="<?php echo site_url('dashboard/hospital_dashboard'); ?>">
      				<i class="now-ui-icons design_app"></i>
      				<p>HOME</p>
      			</a>
      			<?php } else{ ?>
      			<a href="<?php echo site_url('dashboard/receiver_dashboard'); ?>">
      				<i class="now-ui-icons design_app"></i>
      				<p>HOME</p>
      			</a>
      			<?php } ?>
      		</li>
      		<li>
      			<a href="<?php echo site_url('notification/index/').$this->session->loginData['Role_Id'].'/'.$this->session->loginData['Resource_Id'];?>">
      				<i class="now-ui-icons ui-1_bell-53"></i>
      				<p><?php echo count($notification)>0?count($notification):'Notification'; ?></p>
      			</a>
      		</li>
      		<li>
      			<?php if($this->session->loginData['Role_Id'] == 2){$url = site_url('/hospital/edit_hospital/').$this->session->loginData['Resource_Id'];} else{$url = site_url('/receiver/edit_receiver/').$this->session->loginData['Resource_Id'];} ?>
      			<a href="<?php echo $url; ?>">
      				<i class="now-ui-icons users_single-02"></i>
      				<p>Profile</p>
      			</a>
      		</li>
      		<li>
      		</ul>
      	</div>
      </div>
      <!-- end of side bar -->
      <section>
      	<?php 
      	$tr_msg = $this->session->flashdata('tr_msg');
      	$er_msg = $this->session->flashdata('er_msg');

      	if(!empty($tr_msg)){ ?>
      	<div class="content animate-panel">
      		<div class="row">
      			<div class="col-md-12">
      				<div class="hpanel">
      					<div class="alert alert-success alert-dismissable alert1"> <i class="fa fa-check"></i>
      						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      						<?php echo $this->session->flashdata('tr_msg');?>. </div>
      					</div>
      				</div>
      			</div>
      		</div>
      		<?php } else if(!empty($er_msg)){?>
      		<div class="content animate-panel">
      			<div class="row">
      				<div class="col-md-12">
      					<div class="hpanel">
      						<div class="alert alert-danger alert-dismissable alert1"> <i class="fa fa-check"></i>
      							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      							<?php echo $this->session->flashdata('er_msg');?>. </div>
      						</div>
      					</div>
      				</div>
      			</div>
      			<?php } ?>  
      		</section>