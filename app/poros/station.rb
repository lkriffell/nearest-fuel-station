class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times

  def initialize(station_params)
    @name = station_params[:station_name]
    @address = station_params[:street_address] + ' ' + station_params[:city] + ' ' + station_params[:state] + ' ' + station_params[:zip]
    @fuel_type = station_params[:fuel_type_code]
    @access_times = station_params[:access_days_time]
  end
end
