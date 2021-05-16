class SessionsController < ApplicationController
  skip_before_action :login_check

  def create
    if (user = User.find_or_create_with_oauth(request))
      log_in user
      redirect_to achievements_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
