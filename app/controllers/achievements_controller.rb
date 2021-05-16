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

  def create; end

  def edit
    @achievement = Achievement.new
  end

  def update; end

  def destroy; end
end
