# frozen_string_literal: true

module AuthHelper
  def user_login(user)
    # FIXME: allow_any_instance_ofは非推奨
    allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
  end

  def user_logout
    allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: nil)
  end
end
