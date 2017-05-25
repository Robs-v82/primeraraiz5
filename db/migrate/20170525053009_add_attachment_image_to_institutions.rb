class AddAttachmentImageToInstitutions < ActiveRecord::Migration
  def self.up
    change_table :institutions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :institutions, :image
  end
end
