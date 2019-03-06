class UsermoviesController < ApplicationController

    def create 
        @user_movie = Usermovie.create(user_id:params[:user_id], movie_id:params[:movie_id])

        render json: @user_movie
    end 
end
