# typed: strict
class OfferApplication < ApplicationRecord
  belongs_to :offer
  belongs_to :user
end
