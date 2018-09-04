class GuestList < ApplicationRecord
  belongs_to :guests
  belongs_to :newlyweds
  belongs_to :guest_list_statuses
end
