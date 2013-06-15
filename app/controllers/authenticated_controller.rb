class AuthenticatedController < ApplicationController
	before_action :require_user

	def require_user
		if !@current_user.present?
			session[:return_to] ||= request.original_url
			flash[:notice] = "You must be logged in to view this page"
			redirect_to login_url
		end
	end

end
