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
    # check if near (<100m) station
    #   unload people
    #   load people
  end

  def near_station(station)
  end
end
