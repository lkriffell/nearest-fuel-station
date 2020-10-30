class MapFacade
  def self.directions(start_point, nearest_station)
    response = MapService.directions(start_point, nearest_station)
    JSON.parse(response.body, symbolize_names: true)
  end
end
