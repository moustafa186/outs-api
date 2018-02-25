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
    @place = Place.new(place_params)
    if @place.save
        render json: @place, status: :created, location: @place
      else
        render json: @place.errors, status: :unprocessable_entity
      end
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
        render json: @place, status: :ok, location: @place
      else
        render json: @place.errors, status: :unprocessable_entity
      end
  end

  private 
  def place_params
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params.to_unsafe_h)
  end
end
