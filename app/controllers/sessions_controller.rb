class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            flash[:success] = "Welcome to CooK BooK"
            session[:user_id] = user.id
            redirect_to users_path
        else
            flash.now[:danger] = "Invalid login credentials."
            render "new"
        end
  end
  

  def destroy
    session.clear
        flash[:info] = "Thanks, come again."
        redirect_to root_path
  end
end

