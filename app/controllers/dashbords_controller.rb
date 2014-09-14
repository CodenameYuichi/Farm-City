class DashbordsController < ApplicationController
  before_action :authenticate_user!

  def index
    places = Place.all.map { |place| place if place.near?(current_user) }
    @places = places.compact.flatten
  end
end
