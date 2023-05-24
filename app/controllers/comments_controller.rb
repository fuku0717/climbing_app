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
end
