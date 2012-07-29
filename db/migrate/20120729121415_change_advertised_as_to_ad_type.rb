class ChangeAdvertisedAsToAdType < ActiveRecord::Migration
  def up
    rename_column :posts, :advertised_as, :ad_type
  end

  def down
    rename_column :posts, :ad_type, :advertised_as
  end
end
