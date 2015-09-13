require 'open-uri'
class Forecast
	attr_reader :ip, :location, :hash_weather

	def initialize(ip=nil, location={})
		@ip = ip
		@location = location
		w_hash = hash_weather(api_call(@location))
		binding.pry
	end

	def api_call(location)
		"https://api.forecast.io/forecast/#{ENV["APIKEY"]}/#{location[:latitude]},#{location[:longitude]}"
	end

	def hash_weather(the_call)
		file = open(the_call)
		read = File.read(file)
		@hash_weather = JSON.parse(read)
		@hash_weather 
	end

	
end