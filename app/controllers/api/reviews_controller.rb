class Api::ReviewsController < ApplicationController
    ActionController::Parameters.permit_all_parameters = true

    def index
        @reviews = Review.all
        render :index
    end

    def show
        @review = Review.find(params[:id])
        render :show
    end

    def create
        @review = Review.new(params.except(:format, :controller, :action))
        if @review.save
            render :show
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    def update
        @review = Review.find(params[:id])

        if @review && @review.update(review_params)
            render :show
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy

        render :show
    end

    private

    def review_params
        params.require(:review).permit(
            :rating,
            :body,
            :beer_id,
            :user_id,
            :photo
        )
    end
end
