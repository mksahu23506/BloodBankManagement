<section>
	<form method="post" action="">
		<div class="form-group fg-line">
			<label for="name">Hospital Name</label>
			<?php echo form_error('name'); ?>
			<input type="text" class="form-control" id="name" name="name" value="<?php echo set_value('name',$hospital_details->Name);?>">
		</div>
		<div class="form-group fg-line">
			<label for="email">Email</label>
			<?php echo form_error('email'); ?>
			<input type="text" class="form-control" id="email" name="email" value="<?php echo set_value('email',$hospital_details->Email);?>">
		</div>
		<div class="form-group fg-line">
			<label for="mobile">Contact Info</label>
			<?php echo form_error('mobile'); ?>
			<input type="text" class="form-control" id="mobile" name="mobile" value="<?php echo set_value('mobile',$hospital_details->Mobile);?>">
		</div>
		<div class="form-group fg-line">
			<label for="address">Address</label>
			<?php echo form_error('address'); ?>
			<textarea type="text" class="form-control" id="address" name="address" placeholder="Enter Address" rows="3" ><?php echo set_value('address',$hospital_details->Address);?></textarea>
		</div>
		<button class="btn btn-info wave-effect" type="submit">Update</button>
		<a href="<?php echo site_url('dashboard'); ?>"><button class="btn btn-danger wave-effect" type="button">Cancel</button></a>
	</form>
</section>
