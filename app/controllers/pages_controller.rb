class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :seja_voce, :seja_util, :student_page, :volunteer_page, :cv ]

  def home
    @background_color = "#218380"
  end

  def seja_voce
    @background_color = "#480ca8"
  end

  def seja_util
    @background_color = "#E5285E"
  end

  def student_page
    @volunteers = Volunteer.all
    @chatroom = Chatroom.new
    if current_user.role == "student"
      @student = Student.find_by(user: current_user)
    else
      redirect_to root_path, notice: "You don't have access to this page"
    end

    @background_color = "#480ca8"
  end

  def volunteer_page
    @background_color = "#E5285E"
    if current_user.role == "volunteer"
      @volunteer = Volunteer.find_by(user: current_user)
    else
      redirect_to root_path, notice: "You don't have access to this page"
    end
  end

  def student_dahsboard_home
    if current_user.role == "student"
      @student = Student.find_by(user: current_user)
    else
      redirect_to root_path, notice: "You don't have access to this page"
    end

    @background_color = "#480ca8"
  end

  def volunteer_dashboard_home
    @background_color = "#E5285E"
    if current_user.role == "volunteer"
      @volunteer = Volunteer.find_by(user: current_user)
    else
      redirect_to root_path, notice: "You don't have access to this page"
    end
  end

  def cv
    @student = Student.find(params[:student_id])
  end
end
