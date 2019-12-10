class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :hiragana, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
