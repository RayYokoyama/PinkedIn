FactoryBot.define do
  factory :offer_application do
    offer { create(:offer) }
    user { create(:target_user) }
    accepted { false }
    application_type { 1 }
  end
end
