class RestaurantController < ApplicationController
  before_action :new_client
  def index
    @client.get("4ijn-s7e5.json")
  end

  def new_search

  end

  def search
    new_client
    if params
       @restaurants= @client.get("4ijn-s7e5.json",{"$limit" => 1, :aka_name=>params[:restaurant_name]})
      p @restaurant = @restaurants[0]
    else

    end
  end

private
  def new_client
     @client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV['RESTAURANT_API_TOKEN']})
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
