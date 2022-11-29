class CamperController < ApplicationController
    def index
        render json: Camper.all
    end
    def show
        render json: Camper.find_by(id: params[:id])
    end
    def create
        new_camper = Camper.new(c_params)
        render json: new_camper
    end

    private

    def c_params
        params.permit(:name, :age)
    end

end
