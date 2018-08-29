class EventAttendance < ApplicationRecord
  belongs_to :guest
  belongs_to :event
  belongs_to :admin_user
  enum status: [:yes, :no]

  after_initialize do
    if self.new_record?
      self.status ||= :no
    end
  end
end
