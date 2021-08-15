# typed: false
FactoryBot.define do
  factory :offer do
    name { "テスト用求人" }
    fee_type { 1 }
    fee { 10000 }
    description { "これはテスト用求人です。アットホームな職場です!!" }
    deadline { Time.zone.now.next_month }
    association :enterprise_account, factory: :enterprise_account
  end
end
