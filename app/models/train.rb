class Train < ActiveRecord::Base
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
end
