class Offer < ApplicationRecord
  validates :name, :fee, :description, :deadline, presence: true 

  belongs_to :enterprise_account
  has_many :users, through: :offer_users
  has_many :offer_users
  accepts_nested_attributes_for :offer_users

  enum fee_type: { month: 0, date: 1, hour: 2 }

end
