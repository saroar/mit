class WorkingDaysController < ApplicationController
  def index
    @working_days = WorkingDay.all
  end

  def new
    @working_day = WorkingDay.new
    @slot = Slot.new
  end

  def show
    @working_day = WorkingDay.find(params[:id])
    @slots = Slot.all
  end

  def create
    @working_day = WorkingDay.new(working_parmas)

    if @working_day.save
      @working_day.create_slots
      # binding.pry
      redirect_to working_days_path(@working_day)
    else
      render 'new'
    end
  end

  private

  def working_parmas
    params.require(:working_day).permit(:start_of_day, :end_of_day, :slot_id)
  end
end
