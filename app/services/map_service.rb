class MapService
  def self.conn
    Faraday.new(url: "https://www.mapquestapi.com")
  end

  def self.directions(start_point, nearest_station)
    conn.post "/directions/v2/route?key=#{ENV['MAPQUEST-API-KEY']}&from=#{start_point}&to=#{nearest_station}&routeType=fastest"
  end
end
