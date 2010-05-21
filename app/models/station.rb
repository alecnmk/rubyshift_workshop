class Station < ActiveRecord::Base
  has_many  :people, :as => :object
  belongs_to  :branch
end
