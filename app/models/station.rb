class Station < ActiveRecord::Base
  has_many  :people, :as => :object
  belongs_to  :branch
  belongs_to :subway

  def update_state
    new_people = self.subway.people_arriving_on_station
    self.update_attribute(:delta_in, self.delta_in + new_people)
    new_people.times do
      Person.create!(
        :origin_station => self,
        :destination_station => self.branch.random_station(:except => self),
        :arrived_at => self.subway.last_updated_at,
        :subway => self.subway,
        :object => self)
    end
  end
end
