class AddCommentsLikedToUser < ActiveRecord::Migration
  def change
    add_column :users, :comments_liked, :integer
  end
end
