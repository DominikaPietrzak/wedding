class GuestListsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
  end

  def new
end
end
