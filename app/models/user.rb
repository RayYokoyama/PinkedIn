# typed: strict
class User < ApplicationRecord
  extend T::Sig

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :offer_applications
  has_many :offers, through: :offer_applications
  belongs_to :enterprise_account, optional: true, inverse_of: :users
  accepts_nested_attributes_for :enterprise_account
  has_many :messages

  validates :name, :email, :hiragana, presence: true

  sig { returns(T::Boolean) }
  def ea_user?
    enterprise_account_id.present?
    # return enterprise_account
  end

  sig { params(offer: ::Offer).returns(T::Boolean) }
  def applying?(offer)
    offer_applications.find_by(offer_id: offer.id).present?
  end

  sig { params(offer: ::Offer).void }
  def apply_offer!(offer)
    unless applying?(offer)
      offer_applications.create!(offer_id: offer.id)
    end
  end

  sig { returns(OfferApplication::ActiveRecord_Associations_CollectionProxy) }
  def applied_offers
    offer_applications.tap(&:offer)
  end

  sig { params(offer: ::Offer).returns(T::Boolean) }
  def own_offer?(offer)
    enterprise_account == offer.enterprise_account
  end

  def graduated_university_name
    graduated_university&.sub('大学', '')
  end

  def first_same_university_user_name
    User.find_by(graduated_university: graduated_university)&.name
  end
end
