class Subway < ActiveRecord::Base
  has_many  :branches
  has_many  :trains
  has_maby  :people
end
