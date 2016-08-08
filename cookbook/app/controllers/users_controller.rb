class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def index
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
