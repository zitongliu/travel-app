class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
