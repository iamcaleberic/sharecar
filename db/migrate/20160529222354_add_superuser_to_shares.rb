class AddSuperuserToShares < ActiveRecord::Migration
  def change
    add_reference :shares, :superuser, index: true, foreign_key: true
  end
end
