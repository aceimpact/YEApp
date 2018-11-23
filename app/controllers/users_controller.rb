class UsersController < ApplicationController

skip_before_action :authenticate_user!

  def index
  end

  def show

  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find!(id: params[:id])
    @user.destroy
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
