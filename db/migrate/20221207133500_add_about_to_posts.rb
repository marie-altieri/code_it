class AddAboutToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :about_company, :text
  end
end
