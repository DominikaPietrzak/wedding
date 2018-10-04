class GuestListNewlywedSummaryController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @newlyweds = Newlywed.all
    @guests = Guest.all
  end
end
