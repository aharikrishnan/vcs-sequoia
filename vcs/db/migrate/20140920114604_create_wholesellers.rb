class CreateWholesellers < ActiveRecord::Migration
  def self.up
    create_table :wholesellers do |t|
      t.string :name
      t.string :phone
      t.integer :location_id
      t.float :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :wholesellers
  end
end
