class EnterpriseAccount < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :users, dependent: :destroy
end
