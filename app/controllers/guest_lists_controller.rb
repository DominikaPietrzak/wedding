class GuestListsController < ApplicationController
  def index
    @guests = Guest.all
  end
end
