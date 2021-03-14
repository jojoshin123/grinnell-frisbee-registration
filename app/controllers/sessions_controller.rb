class SessionsController < ApplicationController
  def new
  end

  def create
    captain = Captain.find_by(email: params[:session][:email].downcase)
    if captain && captain.authenticate(params[:session][:password])
      log_in(captain)
      redirect_to captain
    else
      flash[:danger]= "Incorrect email or password"
      redirect_to '/login'
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
end
