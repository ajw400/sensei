class LessonsController < ApplicationController
  def index
  end

  def show
    @lesson = Lesson.find(params[:id])
    @les = Lesson.new
  end

  def new
  end

  def update
  end

  def destroy
  end

  def create
  end
end
