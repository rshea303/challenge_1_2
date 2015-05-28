class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(user_id: User.first.id)
    new_order_item = @order.create_order_item(params[:item_id])
    @order.order_items << new_order_item
    @order.save
    
    OrderMailer.order_email(@order).deliver

    redirect_to order_path(@order.id)
  end
end
