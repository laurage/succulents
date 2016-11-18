class PlantsController < ApplicationController
  before_action :find_plant, only:[:show]

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save

    create_ownership
  end

  def create_ownership
    @ownership = Ownership.new(plant: @plant, user: current_user)
    @ownership.save
    redirect_to plant_path(@plant)
  end

  def edit
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name)
  end
end
