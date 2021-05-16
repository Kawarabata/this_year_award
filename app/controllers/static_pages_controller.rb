class StaticPagesController < ApplicationController
  skip_before_action :login_check

  def top; end
end
