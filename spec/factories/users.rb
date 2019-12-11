FactoryBot.define do
  factory :user do
    name { 'テストユーザー' }
    hiragana { 'てすとゆーざー' }
    email { 'test@pinkedin.com' }
    password { 'password' }
  end
end
