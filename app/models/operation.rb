class Operation < ActiveRecord::Base
	belongs_to :municipality
	has_many :events
	validates :name, uniqueness:  {case_sensitive: false }
	validates :name, :date, :source, :scope, :presence => true
	validates :manpower, numericality: true, :allow_nil=> true
	before_save :default_values
	def default_values
		self.sedena ||= false
		self.semar ||= false
		self.pf ||= false
		self.prg ||= false
		self.municipality_in ||= false
		self.state_in ||= false
	end
end
