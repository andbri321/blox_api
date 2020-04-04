class Blox < ActiveRecord::Base
  belongs_to :knowledge_area
  belongs_to :functional_area
  belongs_to :blox_profile
  belongs_to :cycle
  belongs_to :shift
end
