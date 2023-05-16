class MountainsController < ApplicationController

  def index
  end

  def new
    @mountain = Mountain.new
  end

  def create
    Mountain.create(mountain_params)
  end

  private
  def mountain_params
    params.require(:mountain).permit(:mountain_name, :level, :point, :image).merge(user_id: current_user.id)
  end

end