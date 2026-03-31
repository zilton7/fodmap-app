class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

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
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to @food, notice: "Food was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @food.update(food_params)
      redirect_to @food, notice: "Food was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_url, notice: "Food was successfully destroyed."
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(
      :name, :category, :overall_status, :image_file_name, :notes,
      :small_portion_desc, :small_portion_fructose, :small_portion_lactose,
      :small_portion_oligos, :small_portion_polyols,
      :large_portion_desc, :large_portion_fructose, :large_portion_lactose,
      :large_portion_oligos, :large_portion_polyols
    )
  end
end
