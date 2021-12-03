class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :sejavoce ]

  def home
    @background_color = "#E5285E"
  end

  def seja_voce
    @background_color = "#480ca8"
  end

  def seja_util
    @background_color = "#218380"
  end
end
