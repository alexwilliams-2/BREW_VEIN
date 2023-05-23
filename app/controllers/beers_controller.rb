class BeersController < ApplicationController
  # before_action :set_user, only: %i[new create]

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    # @beer.user = @user
    @beer.user = User.first

    @beer.save
    if @beer.save
      redirect_to beers_path(@beer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    beer = Beer.find(params[:id])
    beer.destroy
  end

  private

  # def set_user
  #   @user = current_user
  # end

  def beer_params
    params.require(:beer).permit(:name, :price, :description, :user_id, :photo)
  end
end
