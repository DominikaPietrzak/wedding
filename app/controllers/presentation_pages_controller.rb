class PresentationPagesController < ApplicationController
  def show
        render template: "presentation_pages/#{params[:page]}"  
  end
end
