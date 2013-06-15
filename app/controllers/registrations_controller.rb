class RegistrationsController < ApplicationController

	def new
	end

	def create
		user = User.new user_params
		if user.save
			session[:user_id] = user.id
			flash[:notice] = "Account Successfully Created"
			redirect_to user_account_url
			return
		else
			@errors = user.errors.full_messages
			render :new
		end

	end

private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :password_digest)
	end

end
