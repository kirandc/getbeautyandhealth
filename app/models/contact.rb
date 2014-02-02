class Contact
  include ActiveModel::Model

  attr_accessor :name, :phone, :email, :message

  validates :email, :message, :name, :phone, presence: true
  validates :message, length: {maximum: 300}
  validates :phone, length: {maximum: 12}
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

  def notify
    AdminMailer.contact_us(self).deliver
  end
end
