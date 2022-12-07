class AddHistoryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :about_us, :text
  end
end
