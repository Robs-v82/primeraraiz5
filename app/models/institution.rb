class Institution < ActiveRecord::Base
   	belongs_to :state
   	has_many :products
   	has_many :contacts
	VALID_COLOR_REGEX = /(?<=#)(?<!^)(\h{6}|\h{3})/
	validates :color, format:  {with: VALID_COLOR_REGEX }
	validates :color, length: { is: 7 }
	validates :name, :color, presence: true
	validates :name, uniqueness:  {case_sensitive: false }
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
