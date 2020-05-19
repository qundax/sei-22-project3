class Lots < ActiveRecord::Migration[5.2]
  def change
      create_table :lots do |t|
      t.string :lotNumber
      t.boolean :taken, :default => false
      t.timestamps
    end
  end
end