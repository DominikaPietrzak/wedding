class Guest < ApplicationRecord
  belongs_to :admin_user , optional: true
  has_one :guest_adress
  has_many :event_attendances
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
