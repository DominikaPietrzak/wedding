class EventsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @events = current_admin_user.events.all
  end

  def new
    @event = current_admin_user.events.build
  end

  def create
    @event = current_admin_user.expense_stuffs.build
  end

  def update

  end

  def event_params
    params.require(:event).permit(:name, :event_date)
  end

end
