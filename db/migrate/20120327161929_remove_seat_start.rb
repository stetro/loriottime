class RemoveSeatStart < ActiveRecord::Migration
  def self.up
    remove_column :requests,:seat_start
  end

  def self.down
    add_column :requests, :seat_start,:integer
  end
end
