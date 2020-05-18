class AddCarparkToLots < ActiveRecord::Migration[5.2]
  def change
    add_reference :lots, :carpark, foreign_key: true
  end
end
