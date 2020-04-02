class DosesController < ApplicationController
  def create
    @cocktail = cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)

    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
    # à revoir...
    @doses.destroy redirect_to cocktail_path
  end

  private

  def dose_params
    params.require(:dose).permit(:content, :rating)
  end
end
