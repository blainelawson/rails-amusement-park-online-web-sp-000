class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  helper_method :current_user, :logged_in?
  
  def logged_in?
      !!session[:user_id]
  end

  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end  

end
