require 'open-uri'
class Forecast

	attr_reader :ip, :location, :hash_weather

	def initialize(ip=nil, location={})
		@ip = ip
		@location = location
		hash_weather
	end

	def api_call
		unless @location.empty?
			@the_call = "https://api.forecast.io/forecast/#{ENV["APIKEY"]}/#{location[:latitude]},#{location[:longitude]}"		
		else
			# need to hand this us ip call!
			@the_call = "https://api.forecast.io/forecast/#{ENV["APIKEY"]}/#{location[:latitude]},#{location[:longitude]}"
		end
	end

	def hash_weather
		file = open(api_call)
		read = File.read(file)
		@hash_weather = JSON.parse(read)

		time = Time.at(@hash_weather["currently"]["time"])
		clock_time = time.strftime("%I:%M%P") 
		current_temp = (@hash_weather["currently"]["temperature"]).round
		now_weather = {"time": clock_time, "temperature": current_temp}
		summary_text_string = "It's #{now_weather[:time]} and it is #{now_weather[:temperature]}"
		redirect_pic = @hash_weather["currently"]["icon"]
		# text = TextMessage.new('3475817676', summary_text_string)
		# text.send_sms
		@hash_weather 
		# "it is #{current_temp}"
		# render :login

	end



end