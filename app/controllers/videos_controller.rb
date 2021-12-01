class VideosController < ApplicationController
    def new
    @student = Student.find(params[:student_id])
    @video = Video.new
  end

  def create
    @student = Student.find(params[:student_id])
    @language = Video.new(video_params)
    @language.student = @student

    if @language.save
      redirect_to @student, notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:url)
  end
end
