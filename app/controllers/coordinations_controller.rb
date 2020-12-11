class CoordinationsController < ApplicationController
  before_action :set_coordination, only: [:edit, :show, :update, :destroy]
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
    @coordination = Coordination.where( 'id >= ?', rand(Coordination.first.id..Coordination.last.id) ).first
  end

  def week_coordination
  end

  def update
    @coordination = Coordination.find(params[:id])
    if @coordination.update(coordination_params)
       redirect_to coordination_path
    else
       render :edit
    end
  end

  def destroy
    if current_user.id == @coordination.user_id
      @coordination.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def coordination_params
    params.require(:coordination).permit(:title, :description, :recommended_point, :favorite_item, :use, :image).merge(user_id: current_user.id)
  end

  def set_coordination
    @coordination = Coordination.find(params[:id])
  end
end
