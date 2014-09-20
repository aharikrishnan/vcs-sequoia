class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :addr_line_1
      t.string :street
      t.string :district
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
