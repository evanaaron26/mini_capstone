class RecipesController < ApplicationsController


    def index
        @recipes = Recipes.all? 