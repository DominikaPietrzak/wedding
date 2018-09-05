class AccompaningPerson < ApplicationRecord
  belongs_to :guests, optional: true
  has_one :accompaning_persons_numbers

  def self.create_accompaning_person
    @guestsf = Guest.all
    @guestsf.each do |guest|
      accompaning_person = AccompaningPerson.new
      accompaning_person.guest_id = guest.id
      accompaning_person.accompaning_persons_number_id = AccompaningPersonsNumber.find_by(number: 0).id
      accompaning_person.save
    end
  end

end
