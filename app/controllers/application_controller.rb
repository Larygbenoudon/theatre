class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email first_name
                                                       last_name username])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email username])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[email first_name last_name username photo])
  end

  def user_not_authorized(exception)
   policy_name = exception.policy.class.to_s.underscore

   flash[:error] = "You are not authorized to perform this action."
   redirect_to(request.referrer || root_path)
  end

  def pundit_user
   UserContext.new(current_user)
  end
end
