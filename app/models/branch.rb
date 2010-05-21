class Branch < ActiveRecord::Base
  has_many  :trains
  has_many  :stations
  belongs_to :subway
end
