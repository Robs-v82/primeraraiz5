class Product < ActiveRecord::Base
	belongs_to :institution
	belongs_to :package
	has_attached_file :thumb
	validates_attachment_content_type :thumb, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
