class RemoveStatus < ActiveRecord::Migration
  def self.up
    remove_column :requests, :status
  end

  def self.down
    add_column :requests, :status,:boolean
  end
end
