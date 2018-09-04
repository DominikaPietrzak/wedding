class AccompaningPerson < ApplicationRecord
  belongs_to :guests
  belongs_to :accompaning_person_numbers
end
