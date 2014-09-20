class CreateCropPricings < ActiveRecord::Migration
  def self.up
    create_table :crop_pricings do |t|
      t.integer :location_id
      t.integer :wholeseller_id
      t.float :price
      t.integer :crop_id

      t.timestamps
    end
  end

  def self.down
    drop_table :crop_pricings
  end
end
