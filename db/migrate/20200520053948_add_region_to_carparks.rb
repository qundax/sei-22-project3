class AddRegionToCarparks < ActiveRecord::Migration[5.2]
  def change
    add_reference :carparks, :region, foreign_key: true
  end
end
