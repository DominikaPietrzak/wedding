class NewlywedGuestList < ApplicationRecord
  has_one :guest
  belongs_to :newlyweds, optional: true
  belongs_to :guest_list_statuses, optional: true


  def self.create_guest_list_for_added_guest(guest,admin)
    @newlyweds = Newlywed.all
    guest_list_status = GuestListStatus.find_by(status: "no")
      @newlyweds.each do |newlywed|
        guest_list = NewlywedGuestList.new
        guest_list.newlywed_id = newlywed.id
        guest_list.guest_id = guest.id
        guest_list.guest_list_status_id = guest_list_status.id
        guest_list.save
      end
  end

  def self.create_guest_lists
    @guests = Guest.all
    @newlyweds = Newlywed.all

    @guests.each do |guest|
      @newlyweds.each do |newlywed|
        glist = NewlywedGuestList.new
        glist.guest_id = guest.id
        glist.newlywed_id = newlywed.id
        gstatus = GuestListStatus.find_by(status: "no")
        glist.guest_list_status_id = gstatus.id
        glist.save
      end

    end
  end

end
