class EventAttendancesController < ApplicationController

  before_action :authenticate_admin_user!
  def new
    @event_attendance = current_admin_user.event_attendances.build
    @events = current_admin_user.events.all
  end

  def create
    @event_attendance = current_admin_user.event_attendances.build
    @event_attendance.save
  end

end
