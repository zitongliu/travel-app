class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    comment.save
  end

  private

  def comment_params

    params.require(:comment).permit(:description, :achievement_id, :user_id)

  end
end
