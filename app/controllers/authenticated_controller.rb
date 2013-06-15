class AuthenticatedController < ApplicationController
	before_action :require_user

	def require_user
		if !@current_user.present?
			session[:return_to] ||= request.original_url
			flash[:notice] = "The page you are attempting to access requires that you first be logged in"
			redirect_to login_url
		end
	end

end
