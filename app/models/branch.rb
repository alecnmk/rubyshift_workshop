class Branch < ActiveRecord::Base
  has_many  :trains
  belongs_to :subway
end
