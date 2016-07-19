class Appointment < ActiveRecord::Base
  	belongs_to :property
  	validates :date, :time, presence: true
  	validates :property_id, uniqueness: true, allow_nil: true
end
