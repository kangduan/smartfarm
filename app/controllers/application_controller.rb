class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:master_name, :business_name, :business_number,
      :email, :password])
  end
end
