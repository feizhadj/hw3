class PlaceController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to "/place"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to "/place"
    else
      render 'edit'
    end
  end

  def destroy
    @place.destroy
    redirect_to "/place/new"
  end

  private
  def set_place
    @place = Place.first
  end

  def place_params
    params.require(:place).permit(:name, :description)
  end
end
