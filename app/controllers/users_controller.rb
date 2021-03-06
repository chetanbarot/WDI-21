class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :update]
  
  def index
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
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


    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :username, :profile_image)
      end

end
