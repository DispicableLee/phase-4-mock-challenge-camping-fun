class SignupController < ApplicationController
    def index 
        render json: Signup.all
    end

    def show
        render json: Signup.find_by(id: params[:id])
    end

    def create
        n_s = Signup.new(s_params)
        render json: n_s
    end

    private

    def s_params
        params.permit(:camper_id, :activity_id, :time)
    end

end
