class AddVehicleToLots < ActiveRecord::Migration[5.2]
  def change
    add_reference :lots, :vehicle, foreign_key: true
  end
end
