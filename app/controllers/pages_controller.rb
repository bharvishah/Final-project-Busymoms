class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
    @order = Order.new
    @order.items.build
  end
  def create
  end
end
