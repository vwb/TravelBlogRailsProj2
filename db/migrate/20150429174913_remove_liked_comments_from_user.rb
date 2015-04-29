class RemoveLikedCommentsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :liked_comments, :text
  end
end
