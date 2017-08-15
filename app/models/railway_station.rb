class RailwayStation < ApplicationRecord
  validates :name, presence: true
  has_many  :railway_stations_routes
  has_many  :routes, through: :railway_stations_routes

<<<<<<< HEAD

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position") }
=======
  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }
>>>>>>> master_yoda

  def update_position(route, position)
    station_route = station_route(route) 
    station_route.update(position: position) if station_route
  end 

  def position_in(route)
    station_route(route).try(:position)
  end 

  protected 

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end 
