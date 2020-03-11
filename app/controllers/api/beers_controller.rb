class Api::BeersController < ApplicationController

  def index
    @beers = Beer.all
    render :index
  end

  def show
    @beer = Beer.find(params[:id])
    render :show
  end
  
  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render :show
    else
      render json: @beer.errors.full_messages, status: 422
    end
  end

  def update
    @beer = Beer.find(params[:id])

    if @beer && @beer.update(beer_params)
      render :show
    else
      render json: @beer.errors.full_messages, status: 422
    end
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy

    render :show
  end

  private

  def beer_params
    params.require(:beer).permit(
      :name, 
      :brewery_id, 
      :style, 
      :rating, 
      :description, 
      :abv, 
      :ibu
      )
  end

end
