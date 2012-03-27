class Event < ActiveRecord::Base
  belongs_to :phase
  validates_presence_of :phase, :message => "Bitte geben Sie eine Phase an !"
  has_many :requests, :dependent => :nullify
end
