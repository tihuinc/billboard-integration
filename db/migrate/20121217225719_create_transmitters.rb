class CreateTransmitters < ActiveRecord::Migration
  def change
    create_table :transmitters do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
