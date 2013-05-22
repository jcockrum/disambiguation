class Character < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :description, :name, :archetype_attributes
    
  has_one :archetype
  accepts_nested_attributes_for :archetype, allow_destroy: true

end
