class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :dispatch_user

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  def dispatch_user
    return unless current_user && (current_user.volunteer.nil? || current_user.student.nil? ) && request.get?

    path = new_volunteer_path if current_user.role == 'volunteer' && (current_user.volunteer.nil? || !current_user.volunteer.valid?)
    path = new_student_path if current_user.role == 'student' && (current_user.student.nil? || !current_user.student.valid?)

    redirect_to path unless path.nil? || path == request.path
  end
end
