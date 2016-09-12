class Agent < ActiveRecord::Base
  has_secure_password
  has_attached_file :picture
  has_many :posts
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
