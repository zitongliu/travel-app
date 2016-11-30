class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    comment.achievement_id = params[:achievement_id]
    if @current_user
      comment.user_id = @current_user.id
    end
    comment.save
    redirect_to "/achievements/#{comment.achievement_id}"
  end


  private

  def comment_params

    params.require(:comment).permit(:description, :achievement_id, :user_id)

  end
end
