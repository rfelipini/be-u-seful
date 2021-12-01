class LanguagesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @language = Language.new
  end

  def create
    @student = Student.find(params[:student_id])
    @language = Language.new(language_params)
    @language.student = @student

    if @language.save
      redirect_to @student, notice: 'Language was successfully created.'
    else
      render :new
    end
  end

  private

  def language_params
    params.require(:language).permit(:language, :score)
  end
end
