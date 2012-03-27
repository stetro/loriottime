class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :mail
      t.string :phone
      t.string :city
      t.string :address
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
