class EntriesController < AuthenticatedController

	def approve
		entry = Entry.find(params[:entry_id])
		if entry && @current_user.authorized_for_action_in_pool?("approve-entry", entry.pool)
			entry.update_attributes(approved: true)
		end
		render nothing: true
	end

	def remove_approval
		entry = Entry.find(params[:entry_id])
		if entry && @current_user.authorized_for_action_in_pool?("approve-entry", entry.pool)
			entry.update_attributes(approved: false)
		end
		render nothing: true
	end

	def change_role
		entry = Entry.find(params[:entry_id])
		if entry && @current_user.authorized_for_action_in_pool?("change-role", entry.pool)
			entry.update_attributes(role: params[:entry_role])
		end
		render nothing: true
	end

end
