class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  before_action :set_department, only: [:new, :edit]

  # GET /documents
  # GET /documents.json
  def index
    @q = current_department.documents.ransack(params[:q])
    @documents = @q.result.distinct(:true).includes(department_documents: :department).joins(:department_documents).order(id: :desc).page(params[:page])
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
    @department_ids = @document.department_documents.map { |department_document| department_document.department_id }
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = current_department.documents.build(document_params)
    ActiveRecord::Base.transaction do
      if @document.save
        add_department(department_params)
        redirect_to documents_path
      else
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    def set_department
      @departments = Department.where.not(id: current_department.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.fetch(:document).permit(:title, :name, :content)
    end

    def department_params
      params[:document][:department_ids].present? ? params[:document][:department_ids] : nil
    end

    def add_department(department_params)
      return if department_params.blank?
      department_params.each do |department|
        @document.department_documents.create(department_id: department) if department.present?
      end
    end
end
