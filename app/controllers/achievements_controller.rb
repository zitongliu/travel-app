class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find_by :id => params[:id]
  end

  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new achievement_params
    if @achievement.valid? && @current_user.present?
      @achievement.user_id = @current_user.id
      @achievement.save
      redirect_to achievement_path(@achievement)
    else
      render :new
    end
  end

  def edit
  end

  private
    def achievement_params
      params.require(:achievement).permit(:date, :image, :description)
    end
end
