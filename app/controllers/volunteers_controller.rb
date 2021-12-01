class VolunteersController < ApplicationController
  before_action :set_volunteer, only: %i[show edit update destroy]
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

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:full_name, :github, :background)
  end

end
