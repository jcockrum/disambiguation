class Location < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :description, :name, :parent_id
  has_ancestry
  
  scope :roots_only, :conditions => 'location.ancestry is null'
end
