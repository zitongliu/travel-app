class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by :id => params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :name, :gender, :country, :dob, :email, :password, :password_confirmation)
    end

end