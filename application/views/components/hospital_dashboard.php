
<section>
	<table class="table table-striped table-vmiddle">
		<thead>
			<th>Hospital Name</th>
			<th>Email</th>
			<th>Contact Info</th>
			<th>Address</th>
			<th>Action</th>
		</thead>
		<tbody>
			<tr>
				<td><?php echo $hospital_details[0]->Name; ?></td>
				<td><?php echo $hospital_details[0]->Email; ?></td>
				<td><?php echo $hospital_details[0]->Mobile; ?></td>
				<td><?php echo $hospital_details[0]->Address; ?></td>
				<td><a href="<?php echo site_url('hospital/edit_hospital'); ?>/<?php echo $hospital_details[0]->ID; ?>"><i class="zmdi zmdi-edit"></i></a></td>
			</tr>
		</tbody>
	</table>
	<div>
		<h3>Blood sample available</h3>
		<form method="post" action="">
			<?php foreach($Blood_Group as $row){?>
			<input type="checkbox" value="<?php echo $row->ID; ?>" name="Blood_Group[]" id="Blood_Group" class="Blood_sample" <?php echo $row->Has_Blood?'checked':'';?>><?php echo $row->Blood_Group; ?><br>
			<?php } ?>
			<button class="btn btn-info wave-effect">Update</button>
		</form>
	</div>
</section>
