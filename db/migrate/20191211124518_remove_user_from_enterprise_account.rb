# typed: true
class RemoveUserFromEnterpriseAccount < ActiveRecord::Migration[6.0]
  def change
    remove_reference :enterprise_accounts, :user, foreign_key: true
  end
end
