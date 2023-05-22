class MountainsController < ApplicationController
  before_action :set_mountain, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @mountains = Mountain.includes(:user)
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.new(mountain_params)
    if @mountain.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    if @mountain.update(mountain_params)
      redirect_to mountain_path(@mountain)
    else
      render :edit
    end
  end

  private
  def mountain_params
    params.require(:mountain).permit(:mountain_name, :level, :point, :image).merge(user_id: current_user.id)
  end

  def set_mountain
    @mountain = Mountain.find(params[:id])
  end

end