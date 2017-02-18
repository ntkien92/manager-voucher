class DashboardsController < ApplicationController
  def index
    @number = current_department.department_documents.where(status: DepartmentDocument::INPROGRES).size
  end
end
