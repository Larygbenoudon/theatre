class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale


  protected

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email first_name
                                                       last_name username])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email username])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[email first_name last_name username photo])
  end
end
