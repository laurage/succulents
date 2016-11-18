class PlantsController < ApplicationController
  before_action :find_plant, only:[:show]
  before_action :find_user, only:[:new, :create]

  def show
  end

  def new
    @plant = Plant.new
    raise
  end

  def create
    # @plant = Plant.new(plant_params)
    # @plant.save
    # @ownership = Ownership.new(plant: @plant, gardener: @gardener)
    # @ownership.save
    # redirect_to plant_path(@plant)
  end

  def edit
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def find_gardener
    @user = User.find(params[:gardener_id])
  end

  def plant_params
    params.require(:plant).permit(:name)
  end
end
