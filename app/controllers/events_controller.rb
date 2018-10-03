class EventsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @events = current_admin_user.events.all
  end

  def new
    @event = current_admin_user.events.build
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  def create
    @event = current_admin_user.events.build(event_params)
    @event.save
    if @event.save
      Event.create_event_attendance(@event,current_admin_user)
      EaGuestConfirmation.each_guest_confirmation(@event)
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
  end

  def event_params
    params.require(:event).permit(:name, :event_date)
  end

end
