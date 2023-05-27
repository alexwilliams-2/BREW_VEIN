class OrdersController < ApplicationController
  before_action :set_beer, only: %i[create]

  def index
    @user = current_user
    @orders = Order.where(user_id: @user)
    # @order = @orders.where(user_id: @user)
    # @beer = Beer.find(@order[0].beer_id)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete
    redirect_to orders_path, status: :see_other
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new
    # needs to be updated to current_user
    @order.user = current_user
    @order.beer = @beer
    if @order.save
      redirect_to order_path(@order)
    end
  end

  private

  # def order_params
  #   params.require(:order).permit(:beers_id)
  # end

  def set_beer
    @beer = Beer.find(params[:order][:beer])
  end

  # def set_order
  #   @order = Order.find(params[:id])
  # end
end
