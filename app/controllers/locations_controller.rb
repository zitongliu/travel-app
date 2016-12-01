class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end
  def show
    @location = Location.find_by :id => params[:id]
    session[:current_location] = @location.id
  end
end
