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
    @order.destroy!
    # redirect so tmewhere
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.beer = @beer
    @order.user = current_user
    @order.beer = B
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end
  # def set_order
  #   @order = Order.find(params[:id])
  # end
end
