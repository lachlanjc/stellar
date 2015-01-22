class CommentsController < ApplicationController
  def create
    @discussion = Discussion.find(params[:discussion_id])
    @comment = @discussion.comments.create(comment_params)
    redirect_to discussion_path(@discussion)
  end

  def destroy
    @discussion = Discussion.find(params[:discussion_id])
    @comment = @discussion.comments.find(params[:id])
    @comment.destroy
    redirect_to discussion_path(@discussion)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
