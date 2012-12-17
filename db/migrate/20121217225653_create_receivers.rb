class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
