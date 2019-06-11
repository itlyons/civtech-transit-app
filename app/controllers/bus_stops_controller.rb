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

  def show
      # @busStop = BusStop.find(params[:id])
      @busStop = BusStop.find_by(:name => params[:name])
  end

  
  def search
      if params[:search].blank?
          redirect_to(root_path, alert: "Empty field!") and return
          else
          @parameter = params[:search].downcase
          @results = BusStop.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      end
  end
  
  private

  def bus_stop_params
    params.require(:bus_stop).permit(:title, :address, :visited_by)
  end


end
