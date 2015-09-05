class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_paremeter, if: :devise_controller?
  
  protected
  def configure_permitted_paremeter
    devise_paramater_sanitizer.for(:signup) { |u| u.permit(:name, :stripe_card_token, :email, :password, :passwordconfirmation)}
  end
end
