class HomeController < ApplicationController
  PRODUCT = ['nutrition', 'beauty', 'bath_and_baby', 'at_home', 'more_products']

  def index
  end

  def products
   if params[:category] and PRODUCT.include?(params[:category])
     @menu = params[:category]
     if params[:category] == "nutrition"  
       render "nutrition"
     elsif params[:category] == "beauty"  
       render "beauty"
     elsif params[:category] == "bath_and_baby"  
       render "bath_and_baby"
     elsif params[:category] == "at_home"  
       render "at_home"
     elsif params[:category] == "more_products"  
       render "more_products"
     else
       redirect_to root_path
     end
   else
     redirect_to root_path
   end
  end

  def send_email
    unless params[:email].blank?
    end
  end
end
