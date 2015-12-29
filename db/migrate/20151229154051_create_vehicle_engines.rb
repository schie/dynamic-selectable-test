class CreateVehicleEngines < ActiveRecord::Migration
  def change
    create_table :vehicle_engines do |t|
      t.string :name
      t.integer :model_id

      t.timestamps null: false
    end
  end
end
