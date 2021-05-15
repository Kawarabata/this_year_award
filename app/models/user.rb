class User < ApplicationRecord
  has_many :achievements, dependent: :destroy

  def self.from_omniauth(auth)
    where(provider: auth.provider, email: auth.info.email).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.name = auth.info.name
      user.email = auth.info.email
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      return user
    end
  end
end
