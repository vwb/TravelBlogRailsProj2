class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :country, :mycountry
  end
end
