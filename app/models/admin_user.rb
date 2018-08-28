class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :expense_services
  has_many :expense_stuffs
  has_many :guests
  has_many :event_attendances
  has_many :events

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
