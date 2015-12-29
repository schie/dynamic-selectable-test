module DynamicSelectable
  class VehicleEnginesController < SelectController
    def index
      vehicle_engines = VehicleEngine.where(model_id: params[:model_id]).select('id, name').order('name asc')
      render json: vehicle_engines
    end
  end
end
