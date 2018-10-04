class GuestListEventsSummaryController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @events = Event.all
    @guests = Guest.all
  end
end
