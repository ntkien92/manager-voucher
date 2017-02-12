module ApplicationHelper

  def current_department
    current_user.department
  end
end
