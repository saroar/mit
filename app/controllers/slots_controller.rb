class SlotsController < ApplicationController
  def index
    @slots = Slot.all
  end
  def show
    @slot = Slot.find(params[:id])
  end

  def select
    @slot = Slot.find(params[:id])
    @slot.update_attributes(selected: true)
		redirect_to @slot
  end
end
