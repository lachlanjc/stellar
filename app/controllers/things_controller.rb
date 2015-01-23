class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]

  # GET /things
  def index
    @things = Thing.all
  end

  # GET /things/1
  def show
  end

  # GET /things/new
  def new
    @thing = Thing.new
  end

  # GET /things/1/edit
  def edit
  end

  # POST /things
  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      flash[:success] = "Great. Here's Thing ##{@thing.id}"
      redirect_to @thing
    else
      render :new
    end
  end

  # PATCH/PUT /things/1
  def update
    if @thing.update(thing_params)
      flash[:success] = "Changes saved!"
      redirect_to @thing
    else
      render :edit
    end
  end

  # DELETE /things/1
  def destroy
    @thing.destroy
    flash = "Thing was successfully destroyed."
    redirect_to things_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def thing_params
      params.require(:thing).permit(:name, :pinned, :closed)
    end
end
