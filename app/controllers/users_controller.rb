class UsersController < ApplicationController

skip_before_action :authenticate_user!

  def index

  end

  def show
     @user = User.find_by!(id: params[:id])
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
