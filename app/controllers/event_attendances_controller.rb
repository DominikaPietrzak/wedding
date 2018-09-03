class EventAttendancesController < ApplicationController

  before_action :authenticate_admin_user!

  def create

    @event_attendance = current_admin_user.event_attendances.build(event_attendance_params)
    @event_attendance.save
  end

  def update
    @guests = Guest.all
    @events = Event.all

    @event_attendance_statuses = EventAttendanceStatus.all
    @event_attendance = current_admin_user.event_attendances.find(params[:id])
    @event_attendance.update_attributes(event_attendance_params)
    redirect_to update_event_attendance_path
  end

  def edit
    @guests = Guest.all
    @events = Event.all
    @event_attendance_statuses = EventAttendanceStatus.all
    @event_attendance = current_admin_user.event_attendances.find(params[:id])
  end

  def edit_event_attendance
    @guests = Guest.all
    @events = Event.all
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
  end


  def show
  end

  def event_attendance_params
    params.require(:event_attendance).permit(:guest_id, :event_id, :status, :event_attendance_status_id)
  end
end
