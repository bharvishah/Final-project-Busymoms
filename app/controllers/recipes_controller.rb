class RecipesController < ApplicationController
  def new
    @recipes = Recipe.all
    @recipe= Recipe.new
  end
  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name,:photo,:cuisine,:category,:method, :cooking_time,:serving_size, ingredients_attributes: [:name, :qty, :style]))
    if @recipe.save
      @recipes = Recipe.all
      @recipe = Recipe.new
    end
  end
end
