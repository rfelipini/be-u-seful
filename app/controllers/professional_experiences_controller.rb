class ProfessionalExperiencesController < ApplicationController
    def new
    @student = Student.find(params[:student_id])
    @professional_experience = ProfessionalExperience.new
  end

  def create
    @student = Student.find(params[:student_id])
    @professional_experience = ProfessionalExperience.new(professional_experience_params)
    @professional_experience.student = @student

    if @professional_experience.save
      redirect_to @student, notice: 'Interest was successfully created.'
    else
      render :new
    end
  end

  private

  def professional_experience_params
    params.require(:professional_experience).permit(:description, :started_at, :finalized_at, :ocupation, :company)
  end
end
