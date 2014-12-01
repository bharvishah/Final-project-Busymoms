class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = Recipe.all
    @order = Order.new

  end
  def new
    @order = Order.new
    @order.items.build
  end
  def create

    

    # if order_params[:tmpOrderId]?
    #   @order = Order.Find(order_params[:tmpOrderId])
    #   @order.items.append(order_params[:items])
    #   @order.save
    #   redirect_to index_path(tmpOrderId=@order.id)
    # else
      # @order = Order.new()
      # @order.items = order_params[:items]
      # @order.status = "Draft"
      # @order.save
      # redirect_to index_path(tmpOrderId=@order.id)
    # end
  end

    # private
    #
    # def order_params
    #   params.require(:order).permit(:tmpOrderId, :items['description','quantity'])
    # end


end
