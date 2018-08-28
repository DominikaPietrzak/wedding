class Event < ApplicationRecord
  has_many :event_attendances
  belongs_to :admin_user
end
