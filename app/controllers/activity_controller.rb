class ActivityController < ApplicationController
    def index
        render json: Activity.all
    end

    def show
        a_id = params[:id]
        render json: Activity.find_by(id: a_id), include: :signups
    end
end
