class SessionsController < ApplicationController

  def new

  end

  def create
    # This is to create a session does not mean create a new password
    owner = Owner.find_by(email: params[:email])
    if owner && owner.authenticate(params[:password])
      session[:owner_id] = owner.id
      render :profile
    else
      @error = "Incorrect email or password"
      render :new
    end
  end

  def destroy
    # session[:owner_id] = nil
    session.clear
    redirect_to :root
  end


end
