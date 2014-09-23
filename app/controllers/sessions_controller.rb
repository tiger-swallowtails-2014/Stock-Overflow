class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_email(params[:email])
    # CR - use bCrypt (has_secure_password)
    # CR provide a fail path - for wrong password
    if user.password == params[:password]
      session[:user_id] = user.id
      redirect_to :root
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

end
