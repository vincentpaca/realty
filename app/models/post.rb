class Post < ActiveRecord::Base
  attr_accessible :ad_type, :category, :description, :location, :price, :title, :baths, :bedrooms, :floors, :lot_area
  
  geocoded_by :location
  after_validation :geocode
  
  belongs_to :ad_type
  belongs_to :category

  validates_presence_of :description, :title, :location, :price
  validates_length_of :description, :minimum => 20
end
