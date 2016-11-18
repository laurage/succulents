class OwnershipsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    ownership = Ownership.new()
    ownership.save
  end
end
