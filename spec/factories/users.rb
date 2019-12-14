FactoryBot.define do
  factory :user do
    factory :normal_user do
      name { 'テストユーザー' }
      hiragana { 'てすとゆーざー' }
      email { 'test@pinkedin.com' }
      password { 'password' }
    end

    factory :ea_user do
      name { 'テスト企業アカウントユーザー' }
      hiragana { 'てすときぎょうあかうんとゆーざー' }
      email { 'ea_test@pinkdin.com' }
      password { 'password' }
    end
  end
end
