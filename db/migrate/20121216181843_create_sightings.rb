class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.integer :receiver_uuid
      t.integer :transmitter_id
      t.string :rssi
      t.timestamps
    end
  end
end
