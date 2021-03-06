class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first
    devise_parameter_sanitizer.for(:sign_up) << :last
    devise_parameter_sanitizer.for(:sign_up) << :gender
    devise_parameter_sanitizer.for(:sign_up) << :birth
    devise_parameter_sanitizer.for(:sign_up) << :user
    devise_parameter_sanitizer.for(:sign_up) << :avatar

    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :first
    devise_parameter_sanitizer.for(:account_update) << :last
    devise_parameter_sanitizer.for(:account_update) << :gender
    devise_parameter_sanitizer.for(:account_update) << :birth
    devise_parameter_sanitizer.for(:account_update) << :user
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end

end
