module ApplicationHelper

  def current_department
    current_user.department
  end

  def status
    [[I18n.t('status.inprogres'), 0], [I18n.t('status.approval'), 1]]
  end

  def departments(current_department_id)
    Department.where.not(id: current_department_id).map {|department| [department.name, department.id]}
  end
end
