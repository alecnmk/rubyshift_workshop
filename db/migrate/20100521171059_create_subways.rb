class CreateSubways < ActiveRecord::Migration
  def self.up
    create_table :subways do |t|
      t.datetime  :last_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :subways
  end
end
