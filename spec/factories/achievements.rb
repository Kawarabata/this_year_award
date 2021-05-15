FactoryBot.define do
  factory :achievement do
    title { "MyString" }
    description { "MyText" }
    score { 1 }
    date { "2021-05-15" }
    user { create(:user) }
  end
end
