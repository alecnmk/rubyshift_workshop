class Train < ActiveRecord::Base
  has_many  :people, :as => :object
  belongs_to  :branch
  belongs_to  :station
end
