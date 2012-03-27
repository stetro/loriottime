class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.datetime :start
      t.integer :phase_id
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
