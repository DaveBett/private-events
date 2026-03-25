class AttendancesController < ApplicationController
  before_action :set_event

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = current_user.attendances.build(attended_event_id: @event.id)

    if @attendance.save
      redirect_to @attendance.attended_event, notice: "You've successfully registred for this event"
    else
      redirect_to @event, alert: @attendance.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
