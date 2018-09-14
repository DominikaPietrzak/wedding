class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :expenses
  has_many :guests
  has_many :event_attendances
  has_many :events
  has_many :budgets

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
