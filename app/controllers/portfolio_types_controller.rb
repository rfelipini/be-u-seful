class PortfolioTypesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @portfolio_type = PortfolioType.new
  end

  def create
    @student = Student.find(params[:student_id])
    @portfolio_type = PortfolioType.new(portfolio_type_params)
    @portfolio_type.student = @student

    @portfolio_type.save
    if @portfolio_type.save
      redirect_to @student, notice: 'Portfolio was successfully created.'
    else
      render :new
    end
  end

  private

  def portfolio_type_params
    params.require(:portfolio_type).permit(:image_card, :url, :title)
  end

end
