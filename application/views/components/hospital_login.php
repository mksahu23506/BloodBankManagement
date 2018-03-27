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
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<form class="login100-form validate-form" method="post" action="<?php echo site_url('hospital/hospital_login'); ?>">
						<span class="login100-form-title p-b-43">
							Login to continue
						</span>
						
						<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
							<input class="input100" type="text" name="email" id="email">

							<span class="focus-input100"></span>
							<span class="label-input100">Email</span>
						</div>
						
						<div class="wrap-input100 validate-input" data-validate="Password is required">
							<input class="input100" type="password" name="pass" id="pass">
							<span class="focus-input100"></span>
							<span class="label-input100">Password</span>
						</div><br>

						<div class="container-login100-form-btn">
							<button class="login100-form-btn" type="submit" value="hospital" name="submit" id="submit_hospital">
								Hospital Login
							</button>
						</div><br>
						<div class="container-login100-form-btn">
							<a href="<?php echo site_url(); ?>">Back To Home <i class="fa fa-long-arrow-left m-l-5"></i></a>
						</div>
						
					</form>

					<div class="login100-more" style="background-image: url('<?php echo site_url("common/login/"); ?>images/bg-01.jpg');">
					</div>
				</div>
			</div>
		</div>	