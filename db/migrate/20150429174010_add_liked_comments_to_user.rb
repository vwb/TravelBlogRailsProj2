class AddLikedCommentsToUser < ActiveRecord::Migration
  def change
    add_column :users, :liked_comments, :text
  end
end
