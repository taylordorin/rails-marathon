class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
  end

  private

  def house_params
    params.require(:house).permit(:name, :source, :author, :motto)
  end
end
