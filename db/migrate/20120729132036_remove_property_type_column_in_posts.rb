class RemovePropertyTypeColumnInPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :property_type
  end

  def down
    add_column :property_type, :integer
  end
end
