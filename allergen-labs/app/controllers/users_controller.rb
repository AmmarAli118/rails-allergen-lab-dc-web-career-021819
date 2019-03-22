class UsersController < ApplicationController

before_action :get_user, only: [:show, :edit, :destroy]


  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:id])
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private

    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username)
    end

end
