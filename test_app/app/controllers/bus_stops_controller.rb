class BusStopsController < ApplicationController
  def index
    @busStops = BusStop.order('created_at DESC')
  end

  def new
    @busStop = BusStop.new
  end

  def create
    @busStop = BusStop.new(bus_stop_params)
    if @busStop.save
      flash[:success] = "Bus Stop added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def bus_stop_params
    params.require(:bus_stop).permit(:title, :address, :visited_by)
  end
end
