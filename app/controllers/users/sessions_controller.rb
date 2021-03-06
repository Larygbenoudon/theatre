# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout 'slim'
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super do
  #     flash[:event] = 'user login'
  #   end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def after_sign_out_path_for(resource_or_scope)
    new_session_path(resource_or_scope)
  end

  def after_sign_in_path_for(resource_or_scope)
    return welcome_path if resource_or_scope.admin == false
    return  theatres_path if resource_or_scope.admin == true
  end
end
