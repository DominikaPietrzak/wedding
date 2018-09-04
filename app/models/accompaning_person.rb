class AccompaningPerson < ApplicationRecord
  belongs_to :guests
  has_one :accompaning_persons_numbers

end
