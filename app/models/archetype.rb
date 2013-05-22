class Archetype < ActiveRecord::Base
  belongs_to :character
  attr_accessible :core_desire, :goal, :greatest_fear, :motto, :name, :strategy, :talent, :weakness
end
