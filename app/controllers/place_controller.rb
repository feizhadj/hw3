class PlaceController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @places = Place.find_by({"place" => params["place"]})

    @place = Place.where({"date" => @place["date"] })
    @place = Place.where({"entry" => @place["entry"] })
  end

  def new

    
  end


  def create
    @places = Place.new
    
    @places["place"] = params["place"]
    @places["date"] = params["date"]
    @places["entry"] = params["entry"]

    @places.save

    redirect_to "/place"

  end


end
