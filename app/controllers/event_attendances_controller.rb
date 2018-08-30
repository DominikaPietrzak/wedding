class EventAttendancesController < ApplicationController

  before_action :authenticate_admin_user!
  def new
    @event_attendance = current_admin_user.event_attendances.build
    @events = current_admin_user.events.all
    @guests = current_admin_user.guests.all
  end

  def create
    
    @event_attendance = current_admin_user.event_attendances.build(event_attendance_params)

    @event_attendance.save
  end

  def event_attendance_params
    params.require(:event_attendance).permit(:guest_id, :event_id, :status)
  end
end
