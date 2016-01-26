class ForecastsController < ApplicationController
	def index
		
	end
  
	def get_weather
		lat_long = {longitude: params["longitude"], latitude: params["latitude"]}
		forcast = Forecast.new(ip=nil, lat_long)
		@hash_weather = forcast
		icon_img_description = @hash_weather.hash_weather["currently"]["icon"]
		@gif_url = Giphy.new(icon_img_description).getting_url
		# binding.pry
		render 'login'
		# text = TextMessage.new([params])

		# text.send_sms
		
	end
end