class Package < ActiveRecord::Base
  belongs_to :contact
  belongs_to :municipality
  has_many :products
  validates :contact_id, :total, :presence => true
  validates :total, numericality: { other_than: 0 }
end
