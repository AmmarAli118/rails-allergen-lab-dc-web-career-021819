class RecipesController < ApplicationController

  before_action :get_recipe, only: [:show, :edit, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    redirect_to @recipe
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, ingredients_attributes: [:name])
  end


end
