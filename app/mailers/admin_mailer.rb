class AdminMailer < ActionMailer::Base
  def contact_us(contact)
    @email = contact.email
    @message = contact.message
    @name = contact.name
    @phone = contact.phone
    mail(to: "kiran_dc2004@yahoo.com", from: @email, subject: "Get Beauty & Health Contact Message from #{@email}")
  end

end
