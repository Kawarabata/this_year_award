# frozen_string_literal: true

module OmniauthHelper
  def google_mock(email)
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new(
      provider: 'google_oauth2',
      uid: '100000000000000000000',
      info: {
        name: '桜木 花道',
        email: email,
        first_name: '桜木',
        last_name: '花道',
        image: 'https://lh4.googleusercontent.com/photo.jpg',
        urls: {
          google: 'https://plus.google.com/+HanamichiSakuragi'
        }
      },
      credentials: {
        token: 'TOKEN',
        refresh_token: 'REFRESH_TOKEN',
        expires_at: 1_496_120_719,
        expires: true
      },
      extra: {
        id_token: 'ID_TOKEN',
        id_info: {
          azp: 'APP_ID',
          aud: 'APP_ID',
          sub: '100000000000000000000',
          email: email,
          email_verified: true,
          at_hash: 'HK6E_P6Dh8Y93mRNtsDB1Q',
          iss: 'accounts.google.com',
          iat: 1_496_117_119,
          exp: 1_496_120_719
        },
        raw_info: {
          sub: '100000000000000000000',
          name: '桜木 花道',
          given_name: '花道',
          family_name: '桜木',
          profile: 'https://plus.google.com/+HanamichiSakuragi',
          picture: 'https://lh4.googleusercontent.com/photo.jpg?sz=50',
          email: email,
          email_verified: 'true',
          locale: 'en',
          hd: email.sub(/(.*)@/, '')
        }
      }
    )
  end
end

OmniAuth.config.test_mode = true
