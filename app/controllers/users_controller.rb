class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to user_path(@user)
  end

  def edit
  end

  def update
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy

    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar)
  end
end
