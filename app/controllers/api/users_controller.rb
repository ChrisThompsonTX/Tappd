class Api::UsersController < ApplicationController
    require 'open-uri'

    def create
        @user = User.new(user_params)
        if !user_params[:profile_photo] 
            defaultPhoto = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/Demo.jpeg')
            @user.profile_photo.attach(io: defaultPhoto, filename: 'Demo.jpeg')
            # debugger
        end
            # debugger
        if @user.save
            login(@user)
            render '/api/users/show'
        else
            render json: @user.errors, status: 422
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        if @user
            render "/api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def index
        @users = User.all
        render :index
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :profile_photo)
    end

end
