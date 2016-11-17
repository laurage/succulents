class PlantsController < ApplicationController
  before_action :set_plant, only:[:show]

  def show
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
