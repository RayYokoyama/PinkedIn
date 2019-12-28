class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :offer_applications
  has_many :users, through: :offer_applications
  belongs_to :enterprise_account, optional: true, inverse_of: :users
  accepts_nested_attributes_for :enterprise_account

  validates :name, :email, :hiragana, presence: true

  def ea_user?
    enterprise_account_id.present?
  end
end
