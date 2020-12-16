class SightingsController < ApplicationController
    def index
        sighting = Sighting.all
        render json: SightingSerializer.new(sighting).to_serialized_json
    end

    def show
        sighting = Sighting.find_by(id: params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
