class FavouritesController < ApplicationController
  def create
    current_user.places << Place.find(params[:place_id])
    redirect_to :back
  end

  def destroy
    current_user.places.delete(params[:place_id])
    redirect_to :back
  end
end
