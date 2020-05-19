class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      #t.references :user
      t.string :license_plate
      t.string :vehicle_model
    end
  end
end