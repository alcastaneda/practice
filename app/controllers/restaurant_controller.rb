class RestaurantController < ApplicationController
  def index
    client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV['RESTAURANT_API_TOKEN']})
    p client.get("4ijn-s7e5.json",{"$limit" => 10, :aka_name=>"NICKY'S RESTAURANT"})
  end

  def search

  end
end
# https://data.cityofchicago.org/resource/4ijn-s7e5.json

# API Fields
# Inspection ID inspection_id
# DBA Name dba_name
# AKA Name aka_name
# License # license_
# Facility Type facility_type
# Risk risk
# Address address
# City city
# State state
# Zip zip
# Inspection Date inspection_date
# Inspection Type inspection_type
# Results results
# Violations violations
# Latitude latitude
# Longitude longitude
# Location location
