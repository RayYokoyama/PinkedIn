class EnterpriseAccount < ApplicationRecord
  validates :name, presence: true
  validates :hiragana, presence: true

  has_many :users, dependent: :destroy, inverse_of: :enterprise_account
end
