class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#this is used to let the view access the method current_owner
  helper_method :current_owner

  def current_owner
    # ||= means a || a = b. So if a is nil or false then assign it to b but if a is true than just stay with that
    #this is a helper that is used in controllers

    @current_owner ||= Owner.find(session[:owner_id]) if session[:owner_id]
  end

end
