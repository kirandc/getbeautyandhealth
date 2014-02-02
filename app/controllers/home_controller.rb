class HomeController < ApplicationController
  def index
  end

  def contact_us
    @contact = Contact.new
  end

  def contacts   
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      @contact.notify
      flash[:notice] = "Thanks for the message, we'll be in touch soon"
      redirect_to '/contact_us' and return
    else
      render 'contact_us'
    end
  end
end
