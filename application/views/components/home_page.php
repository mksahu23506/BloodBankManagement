<style type="text/css">
#mainNav{
	background-color: #ee4b28;
}
</style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">Blood Bank Management</a>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="<?php echo site_url('hospital'); ?>">Hospitals SignUp</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="<?php echo site_url('receiver'); ?>">Users/Receivers SignUp</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<section id="content">
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
			<div class="container">
				<table id="data-table-command" class="table table-striped table-vmiddle">
					<thead>
						<tr>
							<th data-column-id="Hospital_Id" data-order="asc" data-visible="false" data-sortable="true">Hospital ID</th>
							<th data-column-id="BloodGroup_Id" data-formatter="BloodGroup" data-visible="false" data-sortable="true">Blood Group ID</th>
							<th data-column-id="Blood_Group" data-formatter="Blood_Group" data-sortable="true">Available Blood Group</th>
							<th data-column-id="Name" data-sortable="true">Hospital Name</th>
							<th data-column-id="Mobile">Mobile</th>
							<th data-column-id="Email">Email</th>
							<th data-column-id="Address" data-sortable="true">Address</th>
							<th data-column-id="commands" data-formatter="commands" data-sortable="false">Request Blood</th>
						</tr>
					</thead>
				</table>
			</div>
		</section>

		<script>

			$(document).ready(function(){
				// alert('hello');
				$("#data-table-command").bootgrid({

					caseSensitive: false,

					ajax: true,
					url : "<?php echo site_url("site/get_bloodBank_detail");?>"	,
					post: function ()
					{
						/* To accumulate custom parameter with the request object */
						return {
							id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
						};
					},
					css: {
						icon       : 'zmdi icon',
						iconColumns: 'zmdi-view-module',
						iconDown   : 'zmdi-expand-more',
						iconRefresh: 'zmdi-refresh',
						iconUp     : 'zmdi-expand-less'
					},

					formatters: {
						"commands": function(column, row)
						{
							return "<a href=\"<?php echo site_url('site/request_blood');?>/" + row.Hospital_Id + "/" + row.BloodGroup_Id + "\" type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.ID + "\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"\" data-original-title=\"Request Blood\"><span class=\"zmdi zmdi-invert-colors\"></span></a>";
						},
					}

				}).on("loaded.rs.jquery.bootgrid", function () {

					if ($('[data-toggle="tooltip"]')[0]) {
						$('[data-toggle="tooltip"]').tooltip();
					}
				})
			});
		</script>