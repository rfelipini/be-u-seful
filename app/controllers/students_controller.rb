class StudentsController < ApplicationController
    before_action :set_student, only: %i[show edit update destroy]

  def new
    @student = Student.new
    #authorize @student
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    @student.user = current_user
    #authorize @student
    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:full_name, :age, :nationality, :city_at, :city_to, :phone_number, :link_to_github, :link_to_linkedin, :passport, :remoto_work, :work_abroad)
  end
end
