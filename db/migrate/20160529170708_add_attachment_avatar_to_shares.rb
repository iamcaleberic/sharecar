class AddAttachmentAvatarToShares < ActiveRecord::Migration
  def self.up
    change_table :shares do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :shares, :avatar
  end
end
