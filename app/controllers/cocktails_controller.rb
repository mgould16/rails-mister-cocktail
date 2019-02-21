class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # restaurant_params are what we pick up from the _form inputs, that are shown on new.html.erb
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
     redirect_to cocktail_path(@cocktail)
    else
      #if we haven't got a valid save to our db, we will render a new page.
      render :new
    end
  end

  private
# we require the 3 params that are sent from the form , in order to save them to @restaurant in create.
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
