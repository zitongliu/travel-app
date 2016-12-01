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

    if params[:file].present?
      req = Cloudinary:Uploader.upload(params[:file])
      @user.image = req['public_id']
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new
    end
  end

  def edit
  # instead of doing: @user = User.find_by :id => params[:id]
  # We use the below method. This ensures that no matter where you click on the edit requiest, the user is always to current user (session)

  @user = @current_user
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req['public_id']
    end
  # @user = User.find_by :id => params[:id]
    @user = @current_user
    if @user.update( user_params )
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
  # user = User.find_by :id => params[:id]
    user = @current_user
    user.destroy

    redirect_to root_path()
  end

  private
    def user_params
      params.require(:user).permit(:username, :name, :gender, :country, :dob, :email, :image, :password, :password_confirmation)
    end
end
