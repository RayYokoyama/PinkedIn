class EnterpriseAccount < ApplicationRecord
  validates :name, :hiragana, presence: true

  has_many :users, dependent: :destroy, inverse_of: :enterprise_account
end
