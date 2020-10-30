class StationsService
  def self.conn
    Faraday.new(url: "https://developer.nrel.gov")
  end

  def self.nearest_station(start_point)
    conn.get "/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['TRANSPORTATION-API-KEY']}&location=#{start_point}&fuel_type=ELEC&limit=1"
  end
end
