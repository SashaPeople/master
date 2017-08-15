class RailwayStationsController < ApplicationController 

  before_action :set_railway_station, only: [:show, :edit, :update, :destroy, :update_position, :update_departure_time, :update_arrival_time]

  def index 
    @railway_stations = RailwayStation.all
  end

  def show 
  end

  def new 
    @railway_station = RailwayStation.new
  end

  def edit 
  end

  def create 
    @railway_station = RailwayStation.new(railway_station_params)
    if @railway_station.save
      redirect_to @railway_station 
    else 
      render :new 
    end
  end

  def update 
    if @railway_station.update(railway_station_params) 
      redirect_to @railway_station 
    else 
      render :new
    end
  end

  def update_position
    @route = Route.find(params[:route_id])
    @railway_station.update_position(@route, params[:position])
    redirect_to @route
  end

  def update_departure_time
    @route = Route.find(params[:route_id])
    @railway_station.update_departure_time(@route, params[:departure_time])
    redirect_to @route
  end

  def update_arrival_time
    @route = Route.find(params[:route_id])
    @railway_station.update_arrival_time(@route, params[:arrival_time])
    redirect_to @route
  end

  def destroy 
    @railway_station.destroy 
    redirect_to railway_stations_path 
  end

  protected 

  def railway_station_params 
    params.require(:railway_station).permit(:name)
  end

  def set_railway_station
    @railway_station = RailwayStation.find(params[:id])
  end 

  

end
