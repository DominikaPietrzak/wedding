class Guestlist < ApplicationRecord
  belongs_to :guests
  belongs_to :newlyweds
  belongs_to :gest_list_statuses
end
