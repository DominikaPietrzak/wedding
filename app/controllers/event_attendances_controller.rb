class EventAttendancesController < ApplicationController

  before_action :authenticate_admin_user!

  def create

    @event_attendance = current_admin_user.event_attendances.build(event_attendance_params)
    @event_attendance.save
  end

  def update
    @events = current_admin_user.events.all
    @guests = current_admin_user.guests.all
    @event_attendance = current_admin_user.event_attendances.find(params[:id])
    @event_attendance.update_attributes(event_attendance_params)
  end

  def index
    @events_attendance = EventAttendance.all
    @events = current_admin_user.events.all
    @guests = current_admin_user.guests.all
  end

  def update_event_attendance

    @event_attendances = EventAttendance.all
    @guests = Guest.all
    @eventsname = Event.all
  end


  def show
  end

  def event_attendance_params
    params.require(:event_attendance).permit(:guest_id, :event_id, :status)
  end
end
