class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user

  def current_user
  	@current_user ||= session[:user_id].present? ? User.find(session[:user_id]) : nil ;
  end

  def redirect_back_or_default(default)
    redirect_to(session.delete(:return_to) || default)
  end

end
