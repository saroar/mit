class AddWorkingDayIdToSlot < ActiveRecord::Migration
  def change
    add_reference :slots, :working_day, index: true, foreign_key: true
  end
end
