class AddColumnToOfferUser < ActiveRecord::Migration[6.0]
  def change
    add_column :offer_users, :status, :integer, default: 0
  end
end
