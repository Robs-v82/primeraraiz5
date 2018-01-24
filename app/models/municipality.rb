class Municipality < ActiveRecord::Base
	has_many :displacements
	has_many :events
end
