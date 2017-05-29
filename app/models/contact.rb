class Contact < ActiveRecord::Base
	belongs_to :institution
	VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true
	validates :email, format:  {with: VALID_EMAIL_REGEX }
	validates :email, uniqueness:  {case_sensitive: false }
	# validates :extension, length: { maximum: 10}, numericality: true, allow_nil: true
end
