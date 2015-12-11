class CreateWorkingDays < ActiveRecord::Migration
  def change
    create_table :working_days do |t|
      t.time :start_of_day
      t.time :end_of_day
      t.integer :divider_partition_hour

      t.timestamps null: false
    end
  end
end
