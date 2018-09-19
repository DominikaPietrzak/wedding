class GuestListEventsSummaryController < ApplicationController
  def index
    @events = Event.all
    @guests = Guest.all
  end
end
