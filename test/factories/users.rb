FactoryBot.define do
  factory :user do
    name { 'MyString' }
    email { 'MyString' }
    provider { 'google-oauth2' }
  end
end
