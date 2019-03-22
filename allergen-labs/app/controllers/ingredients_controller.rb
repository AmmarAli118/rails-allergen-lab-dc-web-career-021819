class IngredientsController < ApplicationController

  before_action :get_ingredient, only: [:show, :edit, :destroy]


    def index
      @ingredients = Ingredient.all
    end

    def show
    end

    def new
      @ingredient = Ingredient.new
    end

    def create
      @ingredient = Ingredient.create(params[:id])
    end

    def edit
    end

    def update

    end

    def destroy
    end

    private

      def get_ingredient
        @ingredient = Ingredient.find(params[:id])
      end

      def ingredient_params
        params.require(:ingredient).permit(:name)
      end

end
