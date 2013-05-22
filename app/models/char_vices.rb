class CharVices < ActiveRecord::Base
  belongs_to :character
  attr_accessible :approach, :efficacy, :regard, :selfcontrol
end
