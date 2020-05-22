class Offences < ActiveRecord::Migration[5.2]
  def change
    create_table :offences do |t|
        t.string :offendingPlateNumber
        t.references :lot
        t.references :carpark
        t.timestamps
      end
  end
end