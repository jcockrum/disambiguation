class Character < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :description, :name, :archetype_attributes
    
  has_many :archetypes
  accepts_nested_attributes_for :archetypes, allow_destroy: true
  
  
end
