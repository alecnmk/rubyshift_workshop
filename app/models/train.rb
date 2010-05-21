class Train < ActiveRecord::Base
  include AASM
  aasm_column :state
  aasm_initial_state :at_depot
  
  aasm_state :at_depot
  aasm_state :forward
  aasm_state :backward

  
  
  has_many  :people, :as => :object
  belongs_to  :branch
  belongs_to  :station
  belongs_to :subway

  def update_state
    # move to next hop (1min * 50km/h)
    # if near_station?()
    #   unload people
    #   load people
    # end
  end

  def near_station?(station)
    tr = Geokit::LatLng.new(self.latitude, self.longitude)
    st = Geokit::LatLng.new(station.latitude, station.longitude)
    tr.distance_to(st) < 0.1
  end
end
