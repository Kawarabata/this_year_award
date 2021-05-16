class User < ApplicationRecord
  has_many :achievements, dependent: :destroy

  class << self
    def find_or_create_with_oauth(request)
      user_params = OauthExtractor.extract_user_params(request)
      find_or_create_by(email: user_params[:email]) do |user|
        user.update(user_params)
      end
    end
  end
end
