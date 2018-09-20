class Companion < ApplicationRecord
  belongs_to :guests, optional: true
  has_one :companion_number

  def self.create_accompaning_person
    @guestsf = Guest.all
    @guestsf.each do |guest|
      companion= Companion.new
      companion.guest_id = guest.id
      companion.companion_number_id = CompanionNumber.find_by(number: 0).id
      companion.save
    end
  end

end
