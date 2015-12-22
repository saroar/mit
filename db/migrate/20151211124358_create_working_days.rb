class CreateWorkingDays < ActiveRecord::Migration
  def change
    create_table :working_days do |t|
      t.datetime :start_of_day
      t.datetime :end_of_day
      t.integer :divider_partition_hour, default: 60

      t.timestamps null: false
    end
  end
end
