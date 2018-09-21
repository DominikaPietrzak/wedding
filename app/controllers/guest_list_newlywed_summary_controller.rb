class GuestListNewlywedSummaryController < ApplicationController
  def index
    @newlyweds = Newlywed.all
    @guests = Guest.all
  end
end
