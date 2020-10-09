class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def cerate
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path(@user)
  end

end
