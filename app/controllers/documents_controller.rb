class DocumentsController < ApplicationController
  include MarkdownHelper

  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  def index
    @documents = Document.all
  end

  # GET /documents/1
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
    @document.save
    redirect_to edit_document_path(@document.id)
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document, notice: 'Document was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /documents/1
  def update
    @document.update(document_params)
    @document.content_html = markdown(@document.content)
    @document.save
    # Prevent *gigantic* log files
    if Rails.env.development?
      system "echo '' > log/development.log"
    end
    render :edit
  end

  # DELETE /documents/1
  def destroy
    @document.destroy
    redirect_to documents_url, notice: 'Document was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def document_params
      params.require(:document).permit(:name, :content, :content_html)
    end
end
