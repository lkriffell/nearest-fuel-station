class SearchController < ApplicationController
  def index
    start_point = params["location"]
    @nearest_station = StationsFacade.nearest_station(start_point)
    directions = MapFacade.directions(start_point, @nearest_station.address)
    @total_distance = directions[:route][:legs].first[:distance]
    @total_time = directions[:route][:legs].first[:time]
    @directions = directions[:route][:legs].first[:maneuvers]
  end
end
