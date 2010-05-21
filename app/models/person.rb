class Person < ActiveRecord::Base
  has_one :origin_station, :class => "Station", :foreign_key => "origin_station_id"
  has_one :destination_station, :class => "Station", :foreign_key => "destination_station_id"
  belongs_to :object, :polymorphic => true
  
end
