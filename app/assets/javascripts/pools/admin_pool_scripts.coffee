$ ->
	if $("body").hasClass("pools-admin_dashboard")
		## When an admin user clicks on the 'approve entry' button, it will fire AJAX to update the entry to 'approved' in the database. Some dom/js will also fire to update the users approval status in the UI. The reverse is also true for the 'remove-approval' button
		$(".entry-row").on "click", ".approve-entry", (e) ->
			$.ajax({
				url: "/entries/approve"
				method: "POST"
				data:
					entry_id: $(e.target).parents(".entry-row").attr("data-entry-id")
				})
			$(e.target).parents("tr").find("td.approval-mark").removeClass("unapproved").addClass("approved").text("✔")
			$(e.target).parents("tr").find(".approve-entry").removeClass("approve-entry").addClass("remove-approval").text("Remove Approval")
		$(".entry-row").on "click", ".remove-approval", (e) ->
			$.ajax({
				url: "/entries/remove_approval"
				method: "POST"
				data:
					entry_id: $(e.target).parents(".entry-row").attr("data-entry-id")
				})
			$(e.target).parents("tr").find("td.approval-mark").removeClass("approved").addClass("unapproved").text("✘")
			$(e.target).parents("tr").find(".remove-approval").removeClass("remove-approval").addClass("approve-entry").text("Approve Entry")
		#####
