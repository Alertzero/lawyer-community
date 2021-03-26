class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :nickname, :email, :first_name, :last_name, :address, :lawyer_id, :telephone_number, :university, :description, :verified])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :nickname, :email, :first_name, :last_name, :address, :lawyer_id, :telephone_number, :university, :description, :verified])
  end
end
