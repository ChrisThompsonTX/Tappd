require 'open-uri'

class Api::BreweriesController < ApplicationController
    ActionController::Parameters.permit_all_parameters = true

    def index
        @breweries = Brewery.all
        render :index
    end

    def show
        @brewery = Brewery.find(params[:id])
        @breweries = Brewery.all
        render :show
    end

    def create
        @brewery = Brewery.new(params.except(:format, :controller, :action))
        @breweries = Brewery.all
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
            :logo => [:name, :lastModified, :lastModifiedDate, :webkitRelativePath, :size, :type]
        )
    end
end
