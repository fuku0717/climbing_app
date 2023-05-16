class MountainsController < ApplicationController
  before_action :set_mountain, except: [:index, :new, :create]

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

  private
  def mountain_params
    params.require(:mountain).permit(:mountain_name, :level, :point, :image).merge(user_id: current_user.id)
  end

  def set_mountain
    @mountain = Mountain.find(params[:id])
  end

end