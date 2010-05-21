class Subway < ActiveRecord::Base
  has_many  :branches
  has_many  :trains
  has_many  :people
end
