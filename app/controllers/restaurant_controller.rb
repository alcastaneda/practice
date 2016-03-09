class RestaurantController < ApplicationController
  def index
    client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV['RESTAURANT_API_TOKEN']})
    p client.get("4ijn-s7e5.json")
  end
end
# https://data.cityofchicago.org/resource/4ijn-s7e5.json
