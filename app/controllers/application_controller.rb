class ApplicationController < ActionController::Base
  protect_from_forgery

  attr_accessor :current_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def logged_in?
    !!current_user
  end

end
