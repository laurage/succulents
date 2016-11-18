class UsersController < ApplicationController
  before_action :user_find, only:[:show]

  def top
  end

  def show
  end

  def new
  end

  def edit
  end

  def user_find
    @user = User.find(params[:id])
  end
end
