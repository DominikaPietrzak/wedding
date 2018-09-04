class GuestList < ApplicationRecord
  belongs_to :guests, optional: true
  belongs_to :newlyweds, optional: true
  belongs_to :guest_list_statuses, optional: true

  def self.create_guest_lists
    @guests = Guest.all
    @newlyweds = Newlywed.all

    @guests.each do |guest|
      @newlyweds.each do |newlywed|
        glist = GuestList.new
        glist.guest_id = guest.id
        glist.newlywed_id = newlywed.id
        gstatus = GuestListStatus.find_by(status: "no")
        glist.guest_list_status_id = gstatus.id
        glist.save
      end

    end
  end

end
