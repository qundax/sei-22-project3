class Regions < ActiveRecord::Migration[5.2]
  def change

    create_table :regions do |t|
      t.string :regionname
      t.string :postalcode
      t.timestamps
    end
  end
end