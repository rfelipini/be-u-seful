class StudentsController < ApplicationController
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

  def student_params
    params.require(:student).permit(:full_name, :age)
  end
end
