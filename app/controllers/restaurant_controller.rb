class RestaurantController < ApplicationController
  before_action :new_client
  # def index
  #   @client.get("cwig-ma7x.json")
  #   p @restaurants= @client.get("4ijn-s7e5.json",{"$limit" => 50})
  # end

  def new_search

  end

  def search

    if params
          @input = params[:restaurant_name].upcase
          @restaurants= @client.get("cwig-ma7x.json",{"$limit" => 10, "$where"=> "starts_with(aka_name,'" + @input + "')"})
          p@restaurants
    end
  end

private
  def new_client
     @client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => ENV['RESTAURANT_API_TOKEN']})
  end

end

#<Hashie::Mash address="5575 W VAN BUREN ST " aka_name="G & N FOOD & LIQUOR" city="CHICAGO" dba_name="G & N FOOD & LIQUOR INC" facility_type="Grocery Store" inspection_date="2016-04-22T00:00:00" inspection_id="1763434" inspection_type="License Re-Inspection" latitude="41.874620484855676" license_="2418103" location=#<Hashie::Mash latitude="41.874620484855676" longitude="-87.76450473922907" needs_recoding=false> longitude="-87.76450473922907" results="Pass" risk="Risk 3 (Low)" state="IL" zip="60644">

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
