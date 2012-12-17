class ChangingFieldsOfSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :receiver_name, :string
    add_column :sightings, :transmitter_name, :string
    remove_column :sightings, :receiver_uuid
    remove_column :sightings, :transmitter_id
  end
end
