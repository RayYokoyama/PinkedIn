FactoryBot.define do
  factory :user do
    factory :normal_user do
      name { 'テストユーザー' }
      hiragana { 'てすとゆーざー' }
      email { 'test@pinkedin.com' }
      password { 'password' }
      admin { false }
    end

    factory :ea_user do
      name { 'テスト企業アカウントユーザー' }
      hiragana { 'てすときぎょうあかうんとゆーざー' }
      email { 'ea_test@pinkdin.com' }
      password { 'password' }
      admin { false }
      association :enterprise_account, factory: :enterprise_account
    end

    factory :admin_user do
      name { '管理者ユーザー' }
      hiragana { 'かんりしゃユーザー' }
      email { 'admin@pinkedin.com' }
      password { 'password' }
      admin { true }
    end
  end
end
