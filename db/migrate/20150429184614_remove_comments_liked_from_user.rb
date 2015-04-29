class RemoveCommentsLikedFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :comments_liked, :text
  end
end
