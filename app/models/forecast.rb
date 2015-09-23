class Forecast

	attr_reader :ip, :location, :hash_weather

	def initialize(ip=nil, location={})
		@ip = ip
		@location = location
		hash_weather
	end

	def api_call
		binding.pry
		@the_call = "https://api.forecast.io/forecast/#{ENV["APIKEY"]}/#{location[:latitude]},#{location[:longitude]}"
	end

	def hash_weather
		file = open(api_call)
		read = File.read(file)
		@hash_weather = JSON.parse(read)
		binding.pry
		@hash_weather 
		
	end


end