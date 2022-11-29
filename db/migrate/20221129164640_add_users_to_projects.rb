class AddUsersToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :company, foreign_key: { to_table: :users }
    add_reference :projects, :coder, foreign_key: { to_table: :users }
  end
end
