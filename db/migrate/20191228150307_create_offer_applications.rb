class CreateOfferApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_applications do |t|
      t.integer :offer_id
      t.integer :user_id
      t.boolean :accepted, default: false, null: false
      t.integer :type, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
