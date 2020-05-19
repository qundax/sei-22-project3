class Carparks < ActiveRecord::Migration[5.2]
  def change
    create_table :carparks do |t|
      t.string :location
      t.integer :totallots
      t.integer :reservedlots, :default =>0
      t.string :photo_url
      t.timestamps
    end
  end
end