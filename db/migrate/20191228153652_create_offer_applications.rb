class CreateOfferApplications < ActiveRecord::Migration[6.0]
  def change

    create_table :offer_applications do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :accepted, default: false, null: false
      t.integer :application_type, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
