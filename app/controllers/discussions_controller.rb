class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]

  def index
    @discussions = Discussion.all
  end

  def show
  end

  def new
    @discussion = Discussion.new
  end

  def edit
  end

  def create
    @discussion = Discussion.new(discussion_params)
    flash[:notice] = 'Discussion was successfully created.' if @discussion.save
    redirect_to @discussion
  end

  def update
    flash[:notice] = 'Discussion was successfully updated.' if @discussion.update(discussion_params)
    redirect_to @discussion
  end

  def destroy
    @discussion.destroy
    redirect_to :index
  end

  private
    def set_discussion
      @discussion = Discussion.find(params[:id])
    end

    def discussion_params
      params.require(:discussion).permit(:title, :pinned)
    end
end
