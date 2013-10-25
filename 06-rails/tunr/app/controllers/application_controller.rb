class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authentication

  private
  def authentication
    @authenticated = User.find(session[:user_id]) unless session[:user_id].nil?
  end
end
