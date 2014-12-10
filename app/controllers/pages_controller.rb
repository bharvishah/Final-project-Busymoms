class PagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @recipes = Recipe.all
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipes = @recipes.mysearch(params[:search]) if params[:search].present?
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
      5.times do
        @order.items.build
      end
    end
  end

  def create
    @order = Order.new(params.require(:order)
            .permit(:store, :allow_sub, :delivery_window, :delivery_date, :add_note, :address_line1, :address_line2, :city, :state, :zip, :country, :phone, items_attributes: [:description, :quantity, :_destroy]))
    if params[:add_item]
      @order.items.build
      render :new
    elsif params[:remove_item]
      render :new
    else
      @order.status = "Order placed"
      @order.user = current_user

      if @order.save
        OrderMailer.order_confirmation(current_user, @order).deliver
        redirect_to root_path, notice: "Your order has been successfully placed."
      else
        render :new
      end
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

  def create_recipe
    @recipe = Recipe.new(params.require(:recipe).permit(:name,:photo,:cuisine,:category,:method, :cooking_time,:serving_size, ingredients_attributes: [:name, :qty, :style, :_destroy]))
    if params[:add_ingredient]
      @recipe.ingredients.build
    elsif params[:remove_ingredient]
    else
      @recipe.save
      @recipe = Recipe.new
    end
  end

end
