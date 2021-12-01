class CoursesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @course = Course.new
  end

  def create
    @student = Student.find(params[:student_id])
    @course = Course.new(course_params)
    @course.student = @student

    @course.save
    if @course.save
      redirect_to @student, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:description, :started_at, :finalized_at, :title, :company)
  end
end
