class UsersController < ApplicationController
  before_action :user_find, only:[:show, :edit]

  def top
  end

  def show
  end

  def edit

  end

  private

  def user_find
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params

  end
end


