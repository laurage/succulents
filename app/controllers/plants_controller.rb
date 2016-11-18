class PlantsController < ApplicationController
  before_action :find_plant, only:[:show]
  before_action :find_user, only:[]

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save

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

  def find_user
    @user = User.find(params[:user_id])
  end

  def plant_params
    params.require(:plant).permit(:name)
  end
end
