class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to mountain_path(@comment.mountain)
    else
      @mountain = @comment.mountain
      @comments = @mountain.comments
      render "mountains/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, mountain_id: params[:mountain_id])
  end
end