class EventAttendancesController < ApplicationController

  before_action :authenticate_admin_user!

  def create
    @event_attendance = current_admin_user.event_attendances.build(event_attendance_params)
    @event_attendance.save
  end

  def edit_event_attendance
    @guests = Guest.all
    @events = Event.all
    @event_attendance_statuses = EventAttendanceStatus.all
  end

  def index
    @events_attendance = EventAttendance.all
    @events = current_admin_user.events.all
    @guests = current_admin_user.guests.all
  end


  def update_event_attendance
    @guests = Guest.all
    @events = Event.all
    @event_attendance_statuses = EventAttendanceStatus.all
    @event_attendance = EventAttendance.find_by(id: params[:event_attendance][:event_attendance_id])
    @event_attendance.update_attributes(event_attendance_params)
    EaGuestConfirmation.create_or_delete_ea_guest_confirmation(@event_attendance)
  end

  def event_attendance_params
    params.require(:event_attendance).permit(:guest_id, :event_id, :status, :event_attendance_status_id)
  end
end
