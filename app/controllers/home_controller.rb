class HomeController < ApplicationController
  PRODUCT = ['nutrition_and_wellness', 'beauty', 'home_care', 'personal_care']

  def index
  end

  def products
   if params[:category] and PRODUCT.include?(params[:category])
     @menu = params[:category]
     if params[:category] == "nutrition_and_wellness"  
       render "nutrition_and_wellness"
     elsif params[:category] == "beauty"  
       render "beauty"
     elsif params[:category] == "home_care"  
       render "home_care"
     elsif params[:category] == "personal_care"  
       render "personal_care"
     else
       redirect_to root_path
     end
   else
     redirect_to root_path
   end
  end

  def contact_us
    @menu = "contact_us"
  end
end
