class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find_by :id => params[:id]
    @comment = Comment.new
  end

  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new achievement_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @achievement.image = req['public_id']
    else
      @achievement.image = "Man_Sunset_Stockphoto_nkdn75.jpg"
    end


    if @achievement.valid? && @current_user.present?
      @achievement.user_id = @current_user.id
      @achievement.location_id = session[:current_location]

      @achievement.save

      redirect_to achievement_path(@achievement)
    else
      render :new
    end
  end

  def edit
    @achievement = @current_user.achievements.find_by :id => params[:id]
  end

  def update
    @achievement = @current_user.achievements.find_by :id => params[:id]

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @achievement.image = req['public_id']
    end

    @achievement.assign_attributes(achievement_params)
    @achievement.save

    if @achievement.update( achievement_params )
      redirect_to achievement_path( @achievement )
    else
      render :edit
    end
  end


  def destroy
  # user = User.find_by :id => params[:id]
    achievement = Achievement.find_by :id => params[:id]
    achievement.destroy

    redirect_to achievements_path()
  end

  private
    def achievement_params
      params.require(:achievement).permit(:title, :date, :image, :description)
    end
end
