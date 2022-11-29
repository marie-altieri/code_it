class AddStuffToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :phone_number, :string
    add_column :users, :description, :text
    add_column :users, :experience, :text
    add_column :users, :language, :string
    add_column :users, :availability, :string
    add_column :users, :role, :string
    add_column :users, :years_of_experience, :integer
  end
end
