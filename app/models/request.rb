class Request < ActiveRecord::Base
  belongs_to :person
  belongs_to :event
  belongs_to :phase
  validates_presence_of :person_id, :message => "Bitte geben Sie eine Person an !"
  validates_presence_of :seat_count , :message => "Bitte wählen Sie die Anzahl der Plätze aus !"
end
