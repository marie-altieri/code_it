class AddFavouritesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favourites, :text, array: true, default: []
  end
end
