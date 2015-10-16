class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create!(permitted_params)
    render nothing: true, status: :created
  end

  private
  def permitted_params
    params.permit(:name, :phone_number, :active, :location)
  end
end
