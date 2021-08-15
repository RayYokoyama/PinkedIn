# typed: true
class CreateEnterpriseAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprise_accounts do |t|
      t.string :name
      t.string :hiragana
      t.string :email

      t.timestamps
    end
  end
end
