class SessionsController < ApplicationController
  layout 'login'

  def new
  end

  def create
    # user = User.find_by(user_name: params[:session][:user_name])
    user = User[user_name: params[:session][:user_name]]
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user # portal
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid user/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
