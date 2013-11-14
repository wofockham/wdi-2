class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  private
  def authenticate
    # Log in the user if they have a session.
    @current_user = User.find_by_id(session[:user_id]) if session[:user_id].present?

    # Clear the session if the user is not found.
    session[:user_id] = nil unless @current_user
  end
end
