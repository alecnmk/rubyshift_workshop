class Subway < ActiveRecord::Base
  has_many  :branches
  has_many  :trains
  has_many  :people

  def heartbeat
    self.trains.each(&:update_state)
    self.branches.each do |branch|
      branch.stations.each(&:update_state)
    end
  end
end
