class AddAttachmentAvatarToDbays < ActiveRecord::Migration
  def self.up
    change_table :dbays do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :dbays, :avatar
  end
end
