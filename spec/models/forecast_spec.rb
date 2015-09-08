require 'pry'
require 'rails_helper'
def get_longlat
	{"latitude" => 40.7142, "longitude" => -74.0064}
end

describe Forecast do
  it 'returns a hash' do
    weather = Forecast.new(ip=nil, get_longlat)

    expect(weather.location).to eq (get_longlat)
  end
end