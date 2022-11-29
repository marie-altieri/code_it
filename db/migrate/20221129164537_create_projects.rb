class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.date :deadline
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
