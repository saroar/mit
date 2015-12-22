class WorkingDay < ActiveRecord::Base
  has_many :slots, :dependent => :destroy

  def slots_number
    # binding.pry
    total_minutes = (end_of_day - start_of_day) / 60
    (total_minutes / divider_partition_hour).to_i
  end

  def create_slots
    i = 0
    while i < slots_number
      # binding.pry
      start = start_of_day + divider_partition_hour * i
      i += 1
      Slot.create(start_time: start, end_time: start + ( divider_partition_hour * 60 ), selected: false, working_day_id: id)
    end
  end
end
