class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy
  ]
  
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
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
