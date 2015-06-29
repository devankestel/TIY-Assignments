class PokemonsController < ApplicationController
  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
