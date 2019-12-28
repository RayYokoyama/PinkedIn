FactoryBot.define do
  factory :offer_application do
    offer_id { 1 }
    user_id { 1 }
    accepted { false }
    type { 1 }
  end
end
