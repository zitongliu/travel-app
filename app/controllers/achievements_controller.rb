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
      req = Cloudinary:Uploader.upload(params[:file])
      @achievement.image = req['public_id']
    end

    if @achievement.valid? && @current_user.present?
      @achievement.user_id = @current_user.id
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

  private
    def achievement_params
      params.require(:achievement).permit(:date, :image, :description)
    end
end
