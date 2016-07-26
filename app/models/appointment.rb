class Appointment < ActiveRecord::Base
  	belongs_to :appointable, :polymorphic => true
  	validates :date, :time, presence: true
  	validates :appointable_id, :appointable_type, presence: true
end
