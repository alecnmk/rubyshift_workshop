class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer :origin_station_id
      t.integer :destination_station_id
      t.datetime  :arrived_at
      t.datetime  :departed_at
      t.datetime  :delivered_at
      t.string    :state
      t.string    :object_type
      t.integer   :object_id
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
