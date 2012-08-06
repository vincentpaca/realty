class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :bedrooms, :integer
    add_column :posts, :baths, :integer
    add_column :posts, :floors, :integer
    add_column :posts, :lot_area, :integer
  end
end
