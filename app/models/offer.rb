# typed: strict
class Offer < ApplicationRecord
  has_many :offer_applications
  has_many :users, through: :offer_applications
  belongs_to :enterprise_account

  validates :name, :fee, :description, :deadline, presence: true 

  enum fee_type: { month: 0, date: 1, hour: 2 }
end
