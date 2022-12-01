class DefaultToStatusProject < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :status, :string, default: "Pending"
  end
end
