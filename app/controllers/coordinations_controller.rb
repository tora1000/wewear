class CoordinationsController < ApplicationController
  
  def index
    @coordinations = Coordination.all
    @coordinations = Coordination.includes(:user)
  end
  
  def new
    @coordination = Coordination.new
  end

  def create
    @coordination = Coordination.create(coordination_params)
    if @coordination.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def show  
  end

  def today_coordination
  end

  def week_coordination
  end

  private
  def coordination_params
    params.require(:coordination).permit(:title, :description, :recommended_point, :image).merge(user_id: current_user.id)
  end
end
