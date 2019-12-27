class AddColumnToOfferUser2 < ActiveRecord::Migration[6.0]
  def change
    add_column :offer_users, :accepted, :boolean, default: false
  end
end
