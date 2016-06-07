class AddEmailToShares < ActiveRecord::Migration
  def change
    add_column :shares, :email, :string
  end
end
