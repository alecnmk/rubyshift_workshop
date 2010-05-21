class Person < ActiveRecord::Base
  include AASM
  aasm_column :status
  aasm_initial_state :pending
  
  aasm_state :pending
  aasm_state :on_way
  aasm_state :delivered
  
  has_one :origin_station, :class => "Station", :foreign_key => "origin_station_id"
  has_one :destination_station, :class => "Station", :foreign_key => "destination_station_id"
  belongs_to :object, :polymorphic => true
  belongs_to :subway
end
