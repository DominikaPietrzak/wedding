class LywedGuestListsController < ApplicationController
  def index
    @newlyweds = Newlywed.all
    @guest_lists = GuestList.all
  end
end
