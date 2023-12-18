class AddMoreColumnToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :VehicleType, :string, null: true
    add_column :vehicles, :CarBodyType, :string, null: true

    Vehicle.update_all(VehicleType: "Normal")
    Vehicle.update_all(CarBodyType: "Normal")

    change_column_null :vehicles, :VehicleType, false
    change_column_null :vehicles, :CarBodyType, false
  end
end
