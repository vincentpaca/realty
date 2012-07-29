class Post < ActiveRecord::Base
  attr_accessible :advertised_as, :description, :location, :price, :property_type
  
  geocoded_by :location
  after_validation :geocode
end
