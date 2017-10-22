class DashboardsController < ApplicationController
  def index
    @number = 0 and return unless current_department
    @number = current_department.department_documents.where(status: DepartmentDocument::INPROGRES).size
  end
end
