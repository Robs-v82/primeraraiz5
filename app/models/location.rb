class Location < ActiveRecord::Base
  belongs_to :area
  belongs_to :client
  has_one :tour, dependent: :destroy
  validates :street, :number, :area_id, presence: true
  validates :number, numericality: true
end
