class Phase < ActiveRecord::Base
  validates_presence_of :season , :message => "Bitte geben Sie eine Jahreszeit an !"
  has_many :events, :dependent => :delete_all
  has_many :requests, :dependent => :nullify
end
