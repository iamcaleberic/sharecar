class AddAvatarToShares < ActiveRecord::Migration
  def change
    add_column :shares, :user_avatar, :image
  end
end
