class Forecast
	attr_reader :ip, :location
	def initialize(ip=nil, location={})
		@ip = ip
		@location = location
		# binding.pry
	end
end