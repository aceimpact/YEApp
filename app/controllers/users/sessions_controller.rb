class Users::SessionsController < Devise::SessionsController

  def new
    render layout: false
  end

end
