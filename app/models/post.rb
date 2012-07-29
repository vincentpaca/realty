class Post < ActiveRecord::Base
  attr_accessible :ad_type, :category, :description, :location, :price
  
  geocoded_by :location
  after_validation :geocode
  
  belongs_to :ad_type
  belongs_to :category
end
