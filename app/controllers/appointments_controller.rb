class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:confirm, :deny, :cancel]

  def confirm
    @lesson.update!(status: "confirmed")
  end

  def deny
    @lesson.update!(status: "denied")
  end

  def cancel
    @lesson.update!(status: "cancelled")
  end

  def create
    appt = Appointment.new(appointment_params)
    appt.user = current_user
    appt.lesson = Lesson.find(params[:lesson_id])
    appt.status = "unconfirmed"
    # appt.total_price = params[:length] * appt.lesson.hour_price
    appt.save!
    redirect_to profile_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :length)
  end

  def set_appointment
    @lesson = Appointment.find(params[:id])
  end
end
