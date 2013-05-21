class Location < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :description, :name
  has_ancestry
end
