class AddVehicleEngineIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :vehicle_engine_id, :integer
  end
end
