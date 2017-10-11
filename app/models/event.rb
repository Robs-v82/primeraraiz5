class Event < ActiveRecord::Base
  belongs_to :operation
  belongs_to :municipality
end
