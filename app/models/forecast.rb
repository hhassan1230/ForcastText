class Forecast
	attr_reader :ip, :location
	def initialize(ip=nil, location={})
		@ip = ip
		@location = location
		binding.pry
	end

	def api_call
		@the_call = "https://api.forecast.io/forecast/#{ENV["APIKEY"]}/#{geo_stats["latitude"]},#{geo_stats["longitude"]}"
	end
end