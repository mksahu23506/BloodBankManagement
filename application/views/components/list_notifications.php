<section id="content">
	<div class="container">
		<table id="data-table-command" class="table table-striped table-vmiddle">
			<thead>
				<tr>
					<th data-column-id="ID" data-visible="false">S.No</th>
					<th data-column-id="notification_details" data-sortable="true">Notification Details</th>
					<th data-column-id="date" data-sortable="true">Date</th>
					<th data-column-id="status" data-sortable="true" data-formatter="status">Status</th>
					<th data-column-id="commands" data-formatter="commands" data-sortable="false">View Notification</th>
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
					url : "<?php echo site_url("notification/get_notification");?>"	,
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

							return "<a href=\"<?php echo site_url('notification/open_notification');?>/" + row.ID + "\" type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.ID + "\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"View\" data-original-title=\"View\"><span class=\"zmdi zmdi-invert-colors\"></span></a>";
						},
						"status": function(column,row){
							var formatter = row.status;
							if(formatter == 'Seen'){
								formatter = '<span style="color:red;">Seen</span>';
							}
							else{
								formatter = '<span style="color:green;">Not Seen</span>';
							}
							return formatter;
						}
					}
				}).on("loaded.rs.jquery.bootgrid", function () {
				})
			});
		</script>