class StudentSkillsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @student_skill = StudentSkill.new
    @skill = Skill.new
  end

  def create
    @student = Student.find(params[:student_id])
    @student_skill = StudentSkill.new(student_skill_params)
    @student_skill.student = @student

    @skill = Skill.new(skill_params)
    @student_skill.skill = @skill
    #criar skill a partir dos dados do params (i.e. linha 9)
    #atribuir skill criada ao @student_skill (ie. linha 10)
    #e entao save apos ter skill e student_skill



    if @student_skill.save
      redirect_to @student, notice: 'Skill was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @student_skill = StudentSkill.find(params[:id])
    @student_skill.destroy
    redirect_to @student_skill.student, notice: 'Skill was successfully deleted.'
  end
  

  private

  def student_skill_params
    params.require(:student_skill).permit(:score)
  end

  def skill_params
    params.require(:skill).permit(:name, :skill_type)
  end
end
