class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :start_time
      t.time :end_time
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
