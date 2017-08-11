class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:confirm, :deny, :cancel]

  def confirm
    @lesson.update!(status: "confirmed")
    redirect_to profile_path
  end

  def deny
    @lesson.update!(status: "denied")
    redirect_to profile_path
  end

  def cancel
    @lesson.update!(status: "cancelled")
    redirect_to profile_path
  end

  def create
    appt = Appointment.new(appointment_params)
    appt.user = current_user
    appt.lesson = Lesson.find(params[:lesson_id])
    appt.status = "unconfirmed"
    appt.total_price = appt.length * appt.lesson.hour_price / 60
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
