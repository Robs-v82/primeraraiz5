class Location < ActiveRecord::Base
  belongs_to :area
  validates :street, :number, :area_id, presence: true
  validates :number, numericality: true
end
