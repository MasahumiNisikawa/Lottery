class Operator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,authentication_keys: [:name]
  devise :registerable, :recoverable, :rememberable, :validatable

  has_many :tickets, class_name: "ticket", foreign_key: "reference_id"
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
  def will_save_change_to_email?
    false
  end
end
