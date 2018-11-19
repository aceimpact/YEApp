class UsersController < ApplicationController

skip_before_action :authenticate_user!

  def index
    render layout: false
  end

  def show

  end

  def update
  end

  def destroy
  end
end
