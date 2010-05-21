class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations, :force => true do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :color
      t.integer :branch_id
      t.integer :delta_in, :default => 0
      t.integer :delta_out, :default => 0
      t.integer :subway_id
      t.timestamps
    end
  end

  def self.down
    drop_table :stations
  end
end
