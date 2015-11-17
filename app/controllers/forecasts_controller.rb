class ForecastsController < ApplicationController
	def index
		
	end
	def get_weather
		lat_long = {longitude: params["longitude"], latitude: params["latitude"]}
		# binding.pry
		forcast = Forecast.new(ip=nil, lat_long)
		# text = TextMessage.new([params])

		# text.send_sms
		
	end
end