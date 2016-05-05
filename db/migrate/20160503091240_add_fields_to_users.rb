class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_male, :boolean ,default: false
  end
end