class Train < ActiveRecord::Base
  include AASM
  aasm_column :status
  aasm_initial_state :forward
  
  aasm_state :forward
  aasm_state :backward

  
  
  has_many  :people, :as => :object
  belongs_to  :branch
  belongs_to  :station
  belongs_to :subway
end
