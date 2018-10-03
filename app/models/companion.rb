class Companion < ApplicationRecord
  belongs_to :guests, optional: true
  has_one :companion_number

  def self.create_accompaning_person
    @guestsf = Guest.all
    @guestsf.each do |guest|
      companion= Companion.new
      companion.guest_id = guest.id
      companion.number = 0
      companion.save
    end
  end

  def self.create_accompaning_person_for_added_guest(guest, current_admin)
    companion = Companion.new
    companion.guest_id = guest.id
    companion.number = 0
    companion.save
  end

end
