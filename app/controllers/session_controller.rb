class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email=>params[:email]
    if (user.present? && user.authenticate(params[:password]))
      session[:user_id] = user.id
      redirect_to properties_path
    else
      flash[:error] = "Invalid email or password. Signup if you are new user
                       before making reservations."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
