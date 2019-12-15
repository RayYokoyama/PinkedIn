class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :hiragana, presence: true

  belongs_to :enterprise_account, optional: true, inverse_of: :users
  accepts_nested_attributes_for :enterprise_account

  def ea_user?
    enterprise_account_id.present?
  end
end
