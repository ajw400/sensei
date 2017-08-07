class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :city, :zipcode, :phone, :company_name, :profile_pic, :bio, :birthdate, :languages])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :address, :city, :zipcode, :phone, :company_name, :profile_pic, :bio, :birthdate, :languages])
  end
end
