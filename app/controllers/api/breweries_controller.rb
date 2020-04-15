class Api::BreweriesController < ApplicationController

    def index
        @breweries = Brewery.all
        render :index
    end

    def show
        @brewery = Brewery.find(params[:id])
        render :show
    end

    def create
        @brewery = Brewery.new(brewery_params)

        if @brewery.save
            render :show
        else
            render json: @brewery.errors.full_messages, status: 422
        end
    end

    def update
        @brewery = Brewery.find(params[:id])

        if @brewery && @brewery.update(beer_params)
            render :show
        else
            render json: @brewery.errors.full_messages, status: 422
        end
    end

    def destroy
        @brewery = Brewery.find(params[:id])
        @brewery.destroy

        render :show
    end

    private

    def brewery_params
        params.require(:brewery).permit(
            :name,
            :address,
            :city,
            :state,
            :country,
            :description,
            :rating,
            :lat,
            :lng,
            :logo
        )
    end
end
