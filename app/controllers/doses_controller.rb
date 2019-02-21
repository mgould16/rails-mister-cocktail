class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # restaurant_params are what we pick up from the _form inputs, that are shown on new.html.erb
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail


    if @dose.save

      redirect_to cocktail_path(@cocktail)
    else
      #if we haven't got a valid save to our db, we will render a new page.
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:dose_id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
# we require the 3 params that are sent from the form , in order to save them to @restaurant in create.
 def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
