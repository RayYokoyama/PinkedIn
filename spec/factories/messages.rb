FactoryBot.define do
  factory :message do
    content { "test用message" }
    association :user, factory: :normal_user
    association :room, factory: :room
  end
end
