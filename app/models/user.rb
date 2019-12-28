class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :offer_applications
  has_many :offers, through: :offer_applications
  belongs_to :enterprise_account, optional: true, inverse_of: :users
  accepts_nested_attributes_for :enterprise_account

  validates :name, :email, :hiragana, presence: true

  def ea_user?
    enterprise_account_id.present?
  end

  def applying?(offer)
    offer_applications.find_by_offer_id(offer.id)
  end

  def apply_offer!(offer)
    unless applying?(offer)
      offer_applications.create!(offer_id: offer.id)
    end
  end
end
