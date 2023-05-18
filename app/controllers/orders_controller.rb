class OrdersController < ApplicationController
  # before_action :set_order, only: %i[destroy]
  def index
    @orders = Order.all
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy!
    # redirect so tmewhere
  end

  # def set_order
  #   @order = Order.find(params[:id])
  # end
end
