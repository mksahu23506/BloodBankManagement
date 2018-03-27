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
				<div class="login100-more" style="background-image: url('<?php echo site_url("common/receiver/"); ?>images/bg-01.jpg');"></div>

				<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
					<form class="login100-form validate-form" method="post" action="<?php echo site_url('receiver/?returnUrl='.$returnUrl); ?>">
						<span class="login100-form-title p-b-59">
							Sign Up
						</span>

						<div class="wrap-input100 validate-input" data-validate="Name is required">
							<span class="label-input100">Name</span>
							<?php echo form_error('name'); ?>
							<input class="input100" type="text" name="name" id="name" placeholder="Name..." value="<?php echo set_value('name'); ?>">
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
							<span class="label-input100">Email</span>
							<?php echo form_error('email'); ?>
							<input class="input100" type="text" name="email" id="email" placeholder="Email addess..." value="<?php echo set_value('email'); ?>">
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Mobile no is required">
							<span class="label-input100">Mobile No</span>
							<?php echo form_error('mobile'); ?>
							<input class="input100" type="text" name="mobile" id="mobile" placeholder="Mobile no...10digits only" value="<?php echo set_value('mobile'); ?>">
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Blood Group Type Is Required">
							<span class="label-input100">Blood Group</span>
							<?php echo form_error('Blood_Group'); ?>
							<select name="Blood_Group" id="Blood_Group" class="input100">
								<option value="">--Select--</option>
								<?php foreach ($Blood_Group as $row) { ?>
								<option value="<?php echo $row->ID; ?>"><?php echo $row->Blood_Group; ?></option>
								<?php } ?>
							</select>
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate = "Password is required">
							<span class="label-input100">Password</span>
							<?php echo form_error('pass'); ?>
							<input class="input100" type="password" name="pass" id="pass" placeholder="*************">
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
							<span class="label-input100">Repeat Password</span>
							<?php echo form_error('repeat-pass'); ?>
							<input class="input100" type="password" name="repeat-pass" id="repeat-pass" placeholder="*************">
							<span class="focus-input100" required></span>
						</div>
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn" type="submit">
									Sign Up
								</button>
							</div>

							<a href="<?php echo base_url('/receiver/receiver_login/?returnUrl='.$returnUrl); ?>" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
								Sign in
								<i class="fa fa-long-arrow-right m-l-5"></i>
							</a><br>
							
							<div class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
								<a href="<?php echo site_url(); ?>">Back To Home <i class="fa fa-long-arrow-left m-l-5"></i></a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>