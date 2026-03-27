class FoodsController < ApplicationController
  def index
    @foods = Food.all
    if params[:query].present?
      query = params[:query].to_s.downcase
      @foods = @foods.select do |food|
        localized_name = view_context.food_name(food).to_s.downcase
        localized_name.include?(query) || food.name.to_s.downcase.include?(query)
      end
    else
      @foods = @foods.to_a
    end
    @foods.sort_by! { |food| view_context.food_name(food).to_s.downcase }
  end

  def show
    @food = Food.find(params[:id])
  end
end
