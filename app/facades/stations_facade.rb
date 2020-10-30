require './app/poros/station'
class StationsFacade
  def self.nearest_station(start_point)
    response = StationsService.nearest_station(start_point)
    station = JSON.parse(response.body, symbolize_names: true)[:fuel_stations].first
    Station.new(station)
  end
end
