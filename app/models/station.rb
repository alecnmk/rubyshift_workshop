class Station < ActiveRecord::Base
  has_many  :people, :as => :object
  has_many  :delivered_people, :as => :object, :class_name => "Person", :foreign_key => "destination_station_id"
  belongs_to  :branch
  belongs_to :subway

  def update_state
    # load new people
  end
  
  def exit_from_station
    delivered = self.delivered_people.delivered
    self.update_attribute :delta_out, self.delta_out + delivered.size
    self.delivered_people.delivered.each do |person|
      person.destroy
    end
  end
end
