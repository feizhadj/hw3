class PlaceController < ApplicationController
  def index
    @place = Place.all
  end

  def show
    @place = Place.find_by({"place" => params["place"]})

    @place = Place.where({"date" => @place["date"] })
    @place = Place.where({"entry" => @place["entry"] })
  end

  def new

    
  end


  def create
    @place = Place.new
    
    @place["place"] = params["place"]
  
    @place.save

    redirect_to "/place"

  end


end
