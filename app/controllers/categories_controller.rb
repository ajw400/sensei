class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @subcategories = @category.subcategories
    @lessons = @category.lessons.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@lessons) do |lesson, marker|
      marker.lat lesson.latitude
      marker.lng lesson.longitude
      marker.infowindow render_to_string(partial: "/shared/map_box", locals: { lesson: lesson })
    end
  end
end
