class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in.
      flash[:success] = 'Thanks for logging in! Want to log out? Just close this window!'
      log_in user
      render 'new'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      #  an error message.
      render 'new'
end
  end

  def destroy
  end
end
