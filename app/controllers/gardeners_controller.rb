class GardenersController < ApplicationController
  before_action :set_gardener, only:[:show]

  def top
  end

  def show
  end

  def new
  end

  def edit
  end

  def set_gardener
    @gardener = Gardener.find(params[:id])
  end
end
