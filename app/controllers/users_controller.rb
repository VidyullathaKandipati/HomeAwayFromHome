class UsersController < ApplicationController
  before_action :check_if_admin, :only=>[:index]
  before_action :check_if_logged_in, :only => [:edit, :update, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id]=@user.id
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :contact, :passport_no, :address, :postcode, :password, :password_confirmation)
  end
end
