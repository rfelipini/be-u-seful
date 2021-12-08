class FieldsOfInterestsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @fields_of_interest = FieldsOfInterest.new
  end

  def create
    @student = Student.find(params[:student_id])
    @fields_of_interest = FieldsOfInterest.new(fields_of_interest_params)
    @fields_of_interest.student = @student

    @fields_of_interest.save
    if @fields_of_interest.save
      redirect_to @student, notice: 'Interest was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @fields_of_interest = FieldsOfInterest.find(params[:id])
    @fields_of_interest.destroy
    redirect_to @fields_of_interest.student, notice: 'Interest was successfully deleted.'
  end
  

  private

  def fields_of_interest_params
    params.require(:fields_of_interest).permit(:interest)
  end

end
