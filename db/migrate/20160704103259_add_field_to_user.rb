class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :experience, :string
    add_column :users, :car_model, :string
    add_column :users, :luggage, :string
  end
end
