class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :hiragana, presence: true

  belongs_to :enterprise_account
end
