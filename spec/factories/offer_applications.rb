FactoryBot.define do
  factory :offer_application do
    offer { nil }
    user { nil }
    accepted { false }
    application_type { 1 }
  end
end
