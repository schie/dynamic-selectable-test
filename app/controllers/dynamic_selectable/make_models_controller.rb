module DynamicSelectable
  class MakeModelsController < SelectController
    def index
      models = Model.where(make_id: params[:make_id]).select('id, name').order('name asc')
      render json: models
    end
  end
end
