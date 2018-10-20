class ApplicationController < ActionController::Base
  helper_method :logged_in?

	private

	def logged_in?
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	  redirect_to root_path unless @current_user.present?
	end


end
