class Property < ActiveRecord::Base
	belongs_to :user
	belongs_to :neighborhood
	belongs_to :agent
	has_many :appointments, :as => :appointable, dependent: :destroy
	has_many :adds, dependent: :destroy
	has_many :comments, as: :commentable, dependent: :destroy
	validates :street, :number, :unit, :owner_first_name, :owner_last_name, :owner_second_last_name, :user_id, :neighborhood_id, presence: true
	validates :number, numericality: true
end