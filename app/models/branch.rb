class Branch < ActiveRecord::Base
  has_many  :trains
  has_many  :stations
  belongs_to :subway

  def random_station(options = {})
    options.stringify_keys!
    except = options['except']

    until station do
      station = self.stations[rand(self.stations.count)]
      redo if except && station == except
    end

    station
  end
end
