class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def register
        @user = User.new(username: params[:username], password: params[:password])
        @user.save
        if @user.id
            render json: {message: 'Successfully Registered'}, status: 201
        else
            render json: {error: 'Failed to register'}, status: 400
        end
    end

    def signin
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: {username: @user.username, token: issue_token({id: @user.id})}
        else
            render json: {error: "username/password combination invalid"}, status: 401
        end
    end

    def validate
        @user = get_current_user
        if @user && @user.authenticate(params[:password])
            render json: {username: @user.username, token: issue_token({id: @user.id})}
        else
            render json: {error: "username/password combination invalid"}, status: 401
        end
    end
    
    def collection
        @user = get_current_user
        if @user
            render json: @user.movies
        else
            render json: {error: "not a valid user"}, status: 401
        end


    end
end
