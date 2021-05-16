class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]

  # GET /achievements
  def index
    @achievements = Achievement.all
  end

  # GET /achievements/:id
  def show
    @achievement = Achievement.find(params[:id])
  end

  # GET /achievements/new
  def new
    @achievement = Achievement.new
  end

  # POST /achievements/:id
  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      redirect_to achievements_path, notice: '作成されました。'
    else
      render :new
    end
  end

  # GET /achievements/:id/edit
  def edit; end

  # PATCH /achievements/:id
  def update
    if @achievement.update(achievement_params)
      redirect_to achievements_path, notice: '更新されました。'
    else
      render :edit
    end
  end

  # DELETE /achievements/:id
  def destroy
    @achievement.destroy
    redirect_to achievements_url, notice: '削除されました。'
  end

  private

  def set_achievement
    @achievement = Achievement.find(params[:id])
  end

  def achievement_params
    params.require(:achievement).permit(:title, :description, :score, :date)
  end
end
