class TripsController < ApplicationController
  def index
    trips = Trip.recent.page(params[:page]).per(params[:per_page])
    render json: trips
  end

  def show

  end
end
