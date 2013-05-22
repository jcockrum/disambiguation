class CharArchetype < ActiveRecord::Base
  belongs_to :character
  attr_accessible :core_desire, :goal, :greatest_fear, :motto, :strategy, :talent, :type, :weakness
end
