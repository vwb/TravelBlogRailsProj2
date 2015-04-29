class ChangeLikedCommentsAndPostsType < ActiveRecord::Migration
  def change
  	change_column :users, :comments_liked, :text
  	change_column :users, :posts_liked, :text
  end
end
