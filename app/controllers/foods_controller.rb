class FoodsController < ApplicationController
  def index
    @foods = Food.all
    if params[:query].present?
      @foods = @foods.where("name LIKE ?", "%#{params[:query]}%")
    end
    @foods = @foods.order(:name)
  end

  def show
    @food = Food.find(params[:id])
  end
end
