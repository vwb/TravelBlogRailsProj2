class RemoveLikedPostsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :liked_posts, :text
  end
end
