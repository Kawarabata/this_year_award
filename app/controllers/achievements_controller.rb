class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def new
    @achievement = Achievement.new
  end

  def edit; end
end
