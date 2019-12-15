FactoryBot.define do
  factory :offer do
    name { "MyString" }
    fee_type { 1 }
    fee { 1 }
    description { "MyString" }
    deadline { "" }
    enterprise_account { nil }
  end
end
