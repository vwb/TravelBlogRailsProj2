class RemoveFieldFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :mycountry, :string
  end
end
