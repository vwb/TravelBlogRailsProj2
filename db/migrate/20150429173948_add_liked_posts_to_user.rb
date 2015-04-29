class AddLikedPostsToUser < ActiveRecord::Migration
  def change
    add_column :users, :liked_posts, :text
  end
end
