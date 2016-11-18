class PlantsController < ApplicationController
  before_action :find_plant, only:[:show]
  before_action :find_gardener, only:[:new]

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @gardener = Gardener.find(params[:gardener_id])
    @plant = Plant.new(plant_params)
    @plant.save
    @ownership = Ownership.new(plant: @plant, gardener: @gardener)
    @ownership.save
    redirect_to plant_path(@plant)
  end

  def edit
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def find_gardener
    @gardener = Gardener.find(params[:gardener_id])
  end

  def plant_params
    params.require(:plant).permit(:name)
  end
end
