class AddEnterpriseAccountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :enterprise_account, foreign_key: true
  end
end
