class OrdersController < ApplicationController
  # before_action :set_order, only: %i[destroy]
  def index
    @user = current_user
    @orders = Order.all
    @order = @orders.where(user_id: @user)
    @beer = Beer.find(@order[0].beer_id)
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
