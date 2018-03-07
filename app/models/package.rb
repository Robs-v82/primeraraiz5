class Package < ActiveRecord::Base
  belongs_to :contact
  belongs_to :municipality
  has_many :products
end
