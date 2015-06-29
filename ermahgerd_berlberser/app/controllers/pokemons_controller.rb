class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end
  def show
    @pokemon = Ermahgerd.find(params[:id])
  end

end
