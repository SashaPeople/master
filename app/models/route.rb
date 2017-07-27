class Route < ApplicationRecord 
  validates :name, presence: true
  has_many  :railway_stations_routes
  has_many  :railway_stations, through: :railway_stations_routes
  has_many  :trains

  before_validation :set_name 

  private 

  def set_name 
    self.name = "#{railway_stations.first.name}-#{railway_stations.last.name}"
  end
end 
