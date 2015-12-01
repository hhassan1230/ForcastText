class Giphy

	def initialize(summary)
		@summary = summary
		getting_url
	end

	def getting_url
		final_array = []
		pic_hash = {
			"snow" => ['http://i.giphy.com/idy0tSinxzsFa.gif'],
			"rain" => ['http://i.giphy.com/5snnNL2QKy8HC.gif', ''],
			"fog" => [],
			"sunny" => [],
			"cloudy" => ['http://i.giphy.com/vilFAy0C8uyf6.gif'],
			"clear-day" => [],
			"clear-night" => [],
			"partly-cloudy-night" => [],
			"partly-cloudy-day" => [],
			"hail" => [],
			"thunderstorm" => [],
			"wind" => [],
			"sleet" => [],
			"tornado" => []
		}
		final_array << pic_hash[@summary].sample
		url = "#{final_array[0]}"
		url
	end

end