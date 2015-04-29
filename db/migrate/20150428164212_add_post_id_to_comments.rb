class AddPostIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :postID, :integer
  end
end
