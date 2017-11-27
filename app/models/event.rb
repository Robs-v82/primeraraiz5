class Event < ActiveRecord::Base
  	belongs_to :operation
  	belongs_to :municipality
  	validates :municipality_id, :date, :type_of_place, :type_of_event, :type_of_aggressor, :source, :presence => true
	validates :wounded_civil_servants, :wounded_officers, :wounded_unarmed_civilians, :wounded_armed_civilians, :wounded_women, :wounded_minors, :wounded_indigenous, :dead_civil_servants, :dead_officers, :dead_unarmed_civilians, :dead_armed_civilians, :dead_women, :dead_minors, :dead_indigenous, :missing_civil_servants, :missing_officers, :missing_unarmed_civilians, :missing_armed_civilians, :missing_women, :missing_minors, :missing_indigenous, :under_arrest_civil_servants, :under_arrest_officers, :under_arrest_unarmed_civilians, :under_arrest_armed_civilians, :under_arrest_women, :under_arrest_minors, :under_arrest_indigenous, numericality: true, :allow_nil=> true 
end




