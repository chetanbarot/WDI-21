class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    
    if !@current_user
      session.delete(:user_id)
    end

    @current_user
  end

  helper_method :logged_in?
  def logged_in?
    !!current_user
  end

  helper_method :authenticate_user!
  def authenticate_user!
    if !logged_in?
      flash[:danger] = "You must be logged in to see this page!"
      redirect_to new_user_session_path
    end
  end
end
