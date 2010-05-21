class Subway < ActiveRecord::Base
  has_many  :branches
  has_many  :trains
  has_many  :people

  def people_arriving_base
    delta = rand(500)
    if rand(2) == 0
      2050 - delta
    else
      2050 + delta
    end
  end

  def rush_hours?
    self.last_updated_at.to_time > self.last_updated_at.at_midnight + 7.hours &&
      self.last_updated_at.to_time <= self.last_updated_at.at_midnight + 9.hours + 30.mins ||

      self.last_updated_at.to_time > self.last_updated_at.at_midnight + 17.hours + 30.mins &&
      self.last_updated_at.to_time <= self.last_updated_at.at_midnight + 19.hours
  end

  def mild_hours?
    self.last_updated_at.to_time > self.last_updated_at.at_midnight + 6.hours &&
      self.last_updated_at.to_time <= self.last_updated_at.at_midnight + 7.hours ||

      self.last_updated_at.to_time > self.last_updated_at.at_midnight + 20.hours &&
      self.last_updated_at.to_time <= self.last_updated_at.at_midnight + 24.hours
  end

  def closed_hours?
    self.last_updated_at.to_time > self.last_updated_at.at_midnight &&
      self.last_updated_at.to_time <= self.last_updated_at.at_midnight + 6.hours
  end

  def people_arriving_on_station
    if rush_hours?
      self.people_arriving_base * 2
    elsif mild_hours?
      (self.people_arriving_base / 3).to_i
    elsif closed_hours?
      0
    else
      self.people_arriving_base
    end
  end

  def heartbeat
    self.update_attribute(:last_updated_at, self.last_updated_at + 1.minute)
    self.trains.each(&:update_state)
    self.branches.each do |branch|
      branch.stations.each(&:update_state)
    end
  end
end
