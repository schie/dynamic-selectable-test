class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :year
      t.integer :make_id
      t.integer :model_id

      t.timestamps null: false
    end
  end
end
