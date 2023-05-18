class BeerController < ApplicationController
  # before_action :set_user, only: %i[new create]

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.user = @user
    @beer.save
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    beer = Beer.find(params[:id])
    beer.destroy
  end

  private

  def set_user
    @user = current_user
  end

  def beer_params
    params.require(:beer).permit(:name, :price, :description)
  end
end
