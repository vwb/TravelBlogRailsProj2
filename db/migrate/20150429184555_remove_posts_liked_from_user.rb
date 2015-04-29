class RemovePostsLikedFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :posts_liked, :text
  end
end
