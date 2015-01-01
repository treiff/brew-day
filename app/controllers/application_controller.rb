class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # BELOW -- added to allow custom fields in registration/edit forms.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation,
                                                            :username, :address) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation,
                                                            :current_password, :username, :address) }
  end

  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  private

  def require_login
    unless current_user
      redirect_to user_session_path
    end
  end
end
