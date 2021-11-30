class VolunteersController < ApplicationController

  def new
    @volunteer = Volunteer.new
    #authorize @volunteer
  end

  def show
  end
  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer.user = current_user
    #authorize @volunteer
    @volunteer.save
    if @volunteer.save
      redirect_to @volunteer, notice: 'Volunteer was successfully created.'
    else
      render :new
    end
  end


  private

  def volunteer_params
    params.require(:volunteer).permit(:full_name, :github, :background)
  end

end
