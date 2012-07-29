class ChangeAdTypeAndCategoryColumnNames < ActiveRecord::Migration
  def up
    rename_column :posts, :ad_type, :ad_type_id
    rename_column :posts, :category, :category_id
  end

  def down
    rename_column :posts, :ad_type_id, :ad_type
    rename_column :posts, :category_id, :category
  end
end
