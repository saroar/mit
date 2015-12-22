class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
