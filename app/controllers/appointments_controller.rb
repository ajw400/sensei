class AppointmentsController < ApplicationController
  def confirm
  end

  def deny
  end

  def cancel
  end

  def create
    appt = Appointment.new(appointment_params)
    appt.user = current_user
    appt.lesson = Lesson.find(params[:lesson_id])
    # appt.total_price = params[:length] * appt.lesson.hour_price
    appt.save!
    redirect_to profile_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :length)
  end
end
