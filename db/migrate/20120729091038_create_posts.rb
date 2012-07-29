class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :property_type
      t.string :advertised_as
      t.decimal :price, :precision => 8, :scale => 2
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
