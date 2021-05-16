class SessionsController < ApplicationController
  def create
    if user = User.find_or_create_with_oauth(request)
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
