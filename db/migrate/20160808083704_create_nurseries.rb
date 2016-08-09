class CreateNurseries < ActiveRecord::Migration
  def change
    create_table :nurseries do |t|
      t.string :name
      t.text :position
      t.string :price
      t.string :open_time
      t.string :extend_time
      t.string :call_number
      t.integer :capacity
      t.integer :license
      t.timestamps
    end
  end
end
