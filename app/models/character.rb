class Character < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :approach, :description, :efficacy, :name, :regard, :selfcontrol
end
