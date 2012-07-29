class Post < ActiveRecord::Base
  attr_accessible :advertised_as, :description, :location, :price, :property_type
end
