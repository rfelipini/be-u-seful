class CertificatesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @certificate = Certificate.new
  end

  def create
    @student = Student.find(params[:student_id])
    @certificate = Certificate.new(certificate_params)
    @certificate.student = @student

    #@certificate.save
    if @certificate.save
      redirect_to @student, notice: 'Certificate was successfully created.'
    else
      render :new
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:upload_image, :image_title, :image_icon)
  end

end
