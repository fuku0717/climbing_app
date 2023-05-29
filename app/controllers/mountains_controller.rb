class MountainsController < ApplicationController
  before_action :set_mountain, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

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
    @comment = Comment.new
    @comments = @mountain.comments.includes(:user)
  end

  def edit
  end

  def update
    if @mountain.update(mountain_params)
      redirect_to mountain_path(@mountain)
    else
      render :edit
    end
  end

  def destroy
    @mountain = Mountain.find(params[:id])
    @mountain.destroy
    redirect_to root_path
  end

  private
  def mountain_params
    params.require(:mountain).permit(:mountain_name, :level, :point, :image).merge(user_id: current_user.id)
  end

  def set_mountain
    @mountain = Mountain.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @mountain.user
  end

end