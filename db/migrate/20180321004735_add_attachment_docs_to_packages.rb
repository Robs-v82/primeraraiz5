class AddAttachmentDocsToPackages < ActiveRecord::Migration
  def self.up
    change_table :packages do |t|
      t.attachment :docs
    end
  end

  def self.down
    remove_attachment :packages, :docs
  end
end
