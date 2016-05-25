class AddAttachmentPictureToAgents < ActiveRecord::Migration
  def self.up
    change_table :agents do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :agents, :picture
  end
end
