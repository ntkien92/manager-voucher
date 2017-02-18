class DepartmentDocumentsController < ApplicationController
  before_action :set_department_document, only: [:show, :edit, :update, :destroy]

  # GET /department_documents
  # GET /department_documents.json
  def index
    @q = DepartmentDocument.where(department_id: current_department.id).ransack(params[:q])
    @department_documents = @q.result.includes(:department, document: :department).page(params[:page]).order(id: :desc)
  end

  # GET /department_documents/1
  # GET /department_documents/1.json
  def show
  end

  # GET /department_documents/new
  def new
    @department_document = DepartmentDocument.new
  end

  # GET /department_documents/1/edit
  def edit
  end

  # POST /department_documents
  # POST /department_documents.json
  def create
    @department_document = DepartmentDocument.new(department_document_params)

    respond_to do |format|
      if @department_document.save
        format.html { redirect_to @department_document, notice: 'Department document was successfully created.' }
        format.json { render :show, status: :created, location: @department_document }
      else
        format.html { render :new }
        format.json { render json: @department_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /department_documents/1
  # PATCH/PUT /department_documents/1.json
  def update
    respond_to do |format|
      if @department_document.update(department_document_params.merge(status: DepartmentDocument::APPROVAL, received_at: Time.zone.now))
        format.html { redirect_to @department_document, notice: 'Department document was successfully updated.' }
        format.json { render :show, status: :ok, location: @department_document }
      else
        format.html { render :edit }
        format.json { render json: @department_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /department_documents/1
  # DELETE /department_documents/1.json
  def destroy
    @department_document.destroy
    respond_to do |format|
      format.html { redirect_to department_documents_url, notice: 'Department document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_document
      @department_document = DepartmentDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_document_params
      params.fetch(:department_document).permit(:name)
    end
end
