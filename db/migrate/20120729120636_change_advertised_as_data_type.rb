class ChangeAdvertisedAsDataType < ActiveRecord::Migration
  def up
    change_column :posts, :advertised_as, :integer
  end

  def down
    change_column :posts, :advertised_as, :string
  end
end
