class ChangePricePrecisionInPosts < ActiveRecord::Migration
  def up
    change_column :posts, :price, :decimal, :precision => 30, :scale => 2
  end

  def down
  end
end
