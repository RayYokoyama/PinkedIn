class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :hiragana, :string
    add_column :users, :graduated_university, :string
    add_column :users, :birth_day, :date
    add_column :users, :current_career, :string
  end
end
