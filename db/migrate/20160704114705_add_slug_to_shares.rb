class AddSlugToShares < ActiveRecord::Migration
  def change
    add_column :shares, :slug, :string
  end
end
