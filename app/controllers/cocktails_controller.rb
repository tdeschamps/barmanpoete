class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end
  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo_url,
      dosages_attributes: [:id, :mix, :ingredient_id]);
  end
end
