class LessonsController < ApplicationController
  def index
  end

  def show
    @lesson = Lesson.find(params[:id])
    @appointment = Appointment.new
    @lesson_coordinates = { lat: @lesson.latitude, lng: @lesson.longitude }
  end

  def new
  end

  def update
    lesson = Lesson.find(params[:id])
    lesson.update(lesson_params)
    cat = Category.find(params[:lesson][:category][:category])
    subcat = Subcategory.find(params[:lesson][:subcategory])
    lesson.save!
    redirect_to profile_path
  end

  def destroy
  end

  def create
    lesson = Lesson.new(lesson_params)
    lesson.user = current_user
    lesson.save!
    redirect_to profile_path
  end


  private

  def lesson_params
    params.require(:lesson).permit(:description, :title, :photo, :level, :hour_price, :subcategory, :category)
  end
end
