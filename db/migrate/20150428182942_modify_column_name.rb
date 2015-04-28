class ModifyColumnName < ActiveRecord::Migration
  def change
  	  rename_column :comments, :postID, :post_id
  end
end
