class PlacesController < ApplicationController

  before_action :set_place, only: [:edit, :show, :update, :destroy] 

  def index
    @places = Place.all
  end

  def edit 
  end

  def new 
    @place = Place.new 
  end

  def show 
  end

  def create 
    @place = Place.new(place_params)
    if @place.save 
      redirect_to @place
    else 
      render :new 
    end
  end

  def update
    if @place.update(place_params)
      redirect_to @place
    else 
      render :new
    end 
  end

  def destroy 
    @place.destroy
    redirect_to places_path
  end

  private

  def place_params 
    params.require(:place).permit(:ptype, :vagon_id)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
