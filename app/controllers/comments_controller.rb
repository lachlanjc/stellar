class CommentsController < ApplicationController
  def create
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.create(comment_params)
    redirect_to thing_path(@thing)
  end

  def destroy
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.find(params[:id])
    @comment.destroy
    redirect_to thing_path(@thing)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :thing_id)
    end
end
