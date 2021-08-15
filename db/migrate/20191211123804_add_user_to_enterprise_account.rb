# typed: true
class AddUserToEnterpriseAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :enterprise_accounts, :user, foreign_key: true
  end
end
