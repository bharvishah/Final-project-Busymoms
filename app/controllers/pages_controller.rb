class PagesController < ApplicationController
  def index
  end
  def new
    @order = Order.new
    @order.items.build
  end
  def create
  end
end
