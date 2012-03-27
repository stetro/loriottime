class Person < ActiveRecord::Base
  validates_presence_of :surname, :message => "Das Feld Name darf nicht leer sein!"
  validates_presence_of :name, :message => "Das Feld Vorname darf nicht leer sein!"
  validates_presence_of :phone, :message => "Das Feld Telefon darf nicht leer sein!"
  validates_presence_of :city, :message => "Das Feld Stadt darf nicht leer sein!"
  has_many :requests, :dependent => :delete_all
end
