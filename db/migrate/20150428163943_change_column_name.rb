class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :blog_id, :user_id
  end
end
