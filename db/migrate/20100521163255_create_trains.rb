class CreateTrains < ActiveRecord::Migration
  def self.up
    create_table :trains do |t|
      t.float :latitude
      t.float :longitude
      t.integer :branch_id
      t.integer :station_id
      
      t.string    :state
      t.timestamps
    end
  end

  def self.down
    drop_table :trains
  end
end
