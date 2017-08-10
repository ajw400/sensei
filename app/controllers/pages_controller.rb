class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @lessons = Lesson.all
    @lesson = Lesson.new
    @subcategory = Subcategory.new
    @categories = Category.all
  end
end
