class VehiclesController < ApplicationController
  def index
  end

  def new
    @vehicle = Vehicle.new
    @vehicle.build_model

    @vehicles = Vehicle.all
  end

  def create
    Vehicle.create(vehicle_params)
    redirect_to :root
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:name, :year, :make_id, :model_id, :vehicle_engine_id)
  end
end
