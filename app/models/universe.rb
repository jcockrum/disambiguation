class Universe < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name
  
  has_many :locations
  has_many :characters
end
