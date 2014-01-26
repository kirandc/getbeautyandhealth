class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def contacts    
    unless params[:email].blank?
    end
    flash[:success] = "Your contact successfully sent."
    redirect_to contact_us_path
  end
end
