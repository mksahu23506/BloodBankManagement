<section id="content">
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
					url : "<?php echo site_url("dashboard/get_bloodBank_detail");?>"	,
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
						"commands": function(column, row) {

							return "<a href=\"<?php echo site_url('dashboard/request_blood');?>/" + row.Hospital_Id + "/" + row.BloodGroup_Id + "\" type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.ID + "\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Request Blood\" data-original-title=\"Request Blood\"><span class=\"zmdi zmdi-invert-colors\"></span></a>";
						},

					}

				}).on("loaded.rs.jquery.bootgrid", function () {
				})
			});
		</script>