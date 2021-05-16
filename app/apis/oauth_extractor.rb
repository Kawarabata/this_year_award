class OauthExtractor
  class << self
    def extract_user_params(request)
      auth = request.env['omniauth.auth']
      {
        provider: auth.provider,
        name: auth.info.name,
        email: auth.info.email,
        image: auth.info.image,
        oauth_token: auth.credentials.token,
        oauth_expires_at: Time.at(auth.credentials.expires_at)
      }
    end
  end
end
