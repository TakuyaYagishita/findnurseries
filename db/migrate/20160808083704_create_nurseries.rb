class CreateNurseries < ActiveRecord::Migration
  def change
    create_table :nurseries do |t|

      t.timestamps null: false
    end
  end
end
