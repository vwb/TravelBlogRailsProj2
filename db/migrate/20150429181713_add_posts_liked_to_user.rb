class AddPostsLikedToUser < ActiveRecord::Migration
  def change
    add_column :users, :posts_liked, :integer
  end
end
