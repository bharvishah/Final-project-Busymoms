class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = Recipe.all
    @order = Order.new

  end
  def new
    @order = Order.new
    @items = session[:shopping_list]
    if @items.count > 0
      @items.each do |item|
        @order.items.build
        @order.items.last.quantity = item[0]
        @order.items.last.description = item[1]
      end
    else
      @order.items.build
    end
  end

  def create
    @order = Order.new(params.require(:order)
            .permit(:user_id, :store, :allow_sub, :delivery_window, :delivery_date, :add_note, :address_line1, :address_line2, :state, :zip, :phone))
    @order.status = "Order placed"
    if @order.save
      OrderMailer.order_confirmation(current_user, @order).deliver
      redirect_to root_path, message: "Your order has been successfully placed."
    end

  end

  def list
    @recipe_id = params["recipe_id"]
    @recipe = Recipe.find(params["recipe_id"])
    @items = session[:shopping_list]
    @recipe.ingredients.each do |ingredient|
      @items << [ingredient.qty, ingredient.name]
    end
  end



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


    # private
    #
    # def order_params
    #   params.require(:order).permit(:tmpOrderId, :items['description','quantity'])
    # end


end
