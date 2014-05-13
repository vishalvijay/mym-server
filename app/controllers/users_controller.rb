class UsersController < ApplicationController

  def index
    render json: User.order("money DESC")
  end

  def create
    @user = User.find_by_uuid user_params[:uuid]
    if @user.present?
      @user.name = user_params[:name]
      @user.money = user_params[:money]
    else
      @user = User.new(user_params)
    end
    if @user.save
      render json: @user
    else
      render json: {:errors => @user.errors.full_messages}, :status => :unprocessable_entity
    end
  end

  def by_uuid
    @user = User.find_by_uuid params[:uuid]
    if @user.present?
      render json: @user
    else
      render json: {:errors => ["User not exist"]}, :status => :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:uuid, :name, :money)
  end
end
