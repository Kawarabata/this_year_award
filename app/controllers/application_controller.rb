class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :login_check

  def login_check
    return if logged_in?

    redirect_to root_path
  end
end
