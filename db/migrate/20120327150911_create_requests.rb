class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.boolean :status
      t.integer :person_id
      t.integer :phase_id
      t.integer :event_id
      t.integer :seat
      t.integer :seat_count
      t.boolean :payed
      t.integer :seat_start
      t.string :info

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
