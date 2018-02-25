class PlacesController < ApplicationController

  def index
    @places = Place.all
    render json: @places
  end

  def show
    @place = Place.find(params[:id])
    render json: @place
  end

  def create
    # @place = Place.create
    # render json: @place, status: created
  end

  def update
  end
end
