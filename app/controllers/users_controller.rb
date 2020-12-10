class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @coordinations = @user.coordinations
  end
end
