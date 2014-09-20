class CreateCrops < ActiveRecord::Migration
  def self.up
    create_table :crops do |t|
      t.string :name
      t.float :govt_price

      t.timestamps
    end
  end

  def self.down
    drop_table :crops
  end
end
