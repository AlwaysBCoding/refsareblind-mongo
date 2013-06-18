class AuthenticatedController < ApplicationController
	before_action :require_user

	def require_user
		if !@current_user.present?
			session[:return_to] ||= request.original_url
			flash[:notice] = "The page you are attempting to access requires that you first be logged in"
			redirect_to login_url
		end
	end

	def set_pool
		params[:pool_id].present? ? @pool = Pool.find_by(slug: params[:pool_id]) : @pool = Pool.find_by(slug: params[:id]) ;
		if !@pool.present?
			flash[:notice] = "The pool you are attempting to access does not exist"
			redirect_to user_account_url
		end
	end

	def set_entry
		@current_entry = Entry.where(user_id: current_user.id, pool_id: @pool.id).first
		if !@current_entry && !@current_user
			session[:return_to] ||= request.original_url
			flash[:notice] = "The page you are attempting to access requires that you first be logged in"
			redirect_to login_url
		elsif !@current_entry && @pool
			flash[:error] = "It looks like you do not have an entry in the pool you are trying to access, enter the access code to join the pool"
			redirect_to join_pool_url(@pool.slug)
		end
	end

end
