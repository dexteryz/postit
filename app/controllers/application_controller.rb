class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
  	if !logged_in?
  		redirect_to root_path, notice: "You must be logged in!"
  	end
  end
end
