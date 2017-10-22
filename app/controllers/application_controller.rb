class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def current_department
    current_user.department
  end

  def admin
    redirect_to dashboards_path and return unless current_user.admin?
  end
end
