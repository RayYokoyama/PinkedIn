class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :fee_type, default: 0, null: false, limit: 1
      t.integer :fee
      t.string :description
      t.datetime :deadline
      t.references :enterprise_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
