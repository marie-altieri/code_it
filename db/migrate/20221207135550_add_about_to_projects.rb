class AddAboutToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :about_company, :text
  end
end
