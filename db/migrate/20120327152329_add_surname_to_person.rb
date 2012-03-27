class AddSurnameToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :surname, :string
    #remove_column :requests, :phase_id
  end

  def self.down
    remove_column :people, :surname
    #add_column :requests, :phase_id,:integer
  end
end
