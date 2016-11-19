class PlantsController < ApplicationController
  before_action :find_plant, only:[:show, :edit, :delete]

  def show
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    create_ownership
  end

  def create_ownership
    @ownership = Ownership.new(plant: @plant, user: current_user, current_owner:true)
    @ownership.save
    redirect_to plant_path(@plant)
    authorize @ownership
  end

  def edit

  end

  def update
  end

  def delete
    @plant.destroy
    authorize @plant
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def plant_params
    params.require(:plant).permit(:name)
  end
end
